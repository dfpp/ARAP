import random

import uiautomator2.exceptions

from utils.util import *
from dynamic_testing.testing_path_planner import PathPlanner
from dynamic_testing.hierachySolver import click_points_Solver, GUI_state_change
from dynamic_testing.grantPermissonDetector import dialogSolver
from datetime import datetime
from uiautomator2 import Direction
from dynamic_testing.activity_launcher import launch_activity_by_deeplinks


def GUI_leaves_clicks(d, d_activity, clicked_bounds, path_planner, d_package, testing_candidate_bounds_list, deviceId):

    # first click all clickable widgets on the screen
    # find clickable leaves
    xml1 = d.dump_hierarchy(compressed=True)
    leaves = click_points_Solver(xml1)
    for leaf in leaves:
        if leaf in clicked_bounds:
            continue
        d.click((leaf[0] + leaf[2]) / 2, (leaf[1] + leaf[3]) / 2)
        clicked_bounds.append(leaf)
        xml2 = d.dump_hierarchy(compressed=True)
        # d.sleep(0.5)

        if GUI_state_change(xml1, xml2):
            collect_GUI()
            d.press("back")

        xml3 = d.dump_hierarchy(compressed=True)
        state_back = GUI_state_change(xml1, xml3)

        d2_activity, d2_package, isLauncher2 = getActivityPackage(d)
        if d2_activity != d_activity or isLauncher2 or state_back:
            testing_candidate_bounds_list.append(leaf)
            path_planner.set_visited(d2_activity)
            # d.press('back')
            full_cur_activity = path_planner.get_activity_full_path(d_activity)
            # d.app_start(d_package, full_cur_activity)
            deeplinks, actions, params = path_planner.get_deeplinks_by_package_activity(d_package,
                                                                                        full_cur_activity)
            status = launch_activity_by_deeplinks(deviceId, deeplinks, actions, params)


def collection_GUI_explore(d, deviceId, path_planner, timeout=60):
    d_activity, d_package, isLauncher = getActivityPackage(d)
    start_time = datetime.now()

    # judge if the screen can swipe
    swipe = False
    xml = d.dump_hierarchy(compressed=True)
    d.swipe_ext(Direction.FORWARD)
    xml2 = d.dump_hierarchy(compressed=True)
    if GUI_state_change(xml1=xml, xml2=xml2):
        swipe = True
        d.swipe_ext(Direction.BACKWARD)

    clicked_bounds = []
    cur_timeout = timeout
    while True:
        testing_candidate_bounds_list = []
        # collect states of current activity
        collect_GUI()

        cur_time = datetime.now()
        delta = (cur_time - start_time).seconds
        if delta > cur_timeout:
            return

        # first click all clickable widgets on the screen
        path_planner.set_visited(d_activity)
        GUI_leaves_clicks(d, d_activity, clicked_bounds, path_planner, d_package, testing_candidate_bounds_list, deviceId)

        if swipe:
            d.swipe_ext(Direction.FORWARD)

            # collect new GUI after swiping
            collect_GUI()

            GUI_leaves_clicks(d, d_activity, clicked_bounds, path_planner, d_package, testing_candidate_bounds_list, deviceId)

            d.swipe_ext(Direction.BACKWARD)

            cur_time = datetime.now()
            delta = (cur_time - start_time).seconds
            if delta > cur_timeout:
                return


def unit_dynamic_testing(deviceId, apk_path, atg_json, deeplinks_json, log_save_path, test_time=1200, reinstall=True):
    visited_rate = []
    installed1, packageName, mainActivity = installApk(apk_path, device=deviceId, reinstall=reinstall)
    if installed1 != 0:
        print('install ' + apk_path + ' fail.')
        return
    try:
        d = u2.connect(deviceId)
    except requests.exceptions.ConnectionError:
        print('requests.exceptions.ConnectionError')
        return

    test_start_time = datetime.now()

    # open launcher activity
    d.app_start(packageName)
    d.sleep(3)
    dialogSolver(d)
    # d.swipe_ext(Direction.FORWARD)
    # d.swipe_ext(Direction.BACKWARD)
    path_planner = PathPlanner(packageName, atg_json, deeplinks_json)
    delta = 0
    while delta <= test_time:
        collection_GUI_explore(d, deviceId, path_planner, timeout=60)
        print('---------------------- visited rate: ', path_planner.get_visited_rate())
        visited_rate.append(path_planner.get_visited_rate())

        while True:
            next_activity = path_planner.pop_next_activity()
            if next_activity is not None:
                # d.app_start(d_package, next_activity)
                deeplinks, actions, params = path_planner.get_deeplinks_by_package_activity(packageName,
                                                                                            next_activity)
                status = launch_activity_by_deeplinks(deviceId, deeplinks, actions, params)
                if status:
                    path_planner.set_visited(next_activity)
                    break
            else:
                print('no next activity in ATG')
                unvisited = path_planner.get_unvisited_activity_deeplinks()
                if unvisited is None:
                    print('no activity, finish')
                    print('visited rate:%s' % (path_planner.get_visited_rate()))
                    visited_rate.append(path_planner.get_visited_rate())
                    path_planner.log_visited_rate(visited_rate, path=log_save_path)
                    cur_test_time = datetime.now()
                    delta = (cur_test_time - test_start_time).total_seconds()
                    print('time cost:' + str(delta))
                    return
                else:
                    for i in unvisited:
                        activity, deeplinks, actions, params = i
                        status = launch_activity_by_deeplinks(deviceId, deeplinks, actions, params)
                        path_planner.set_popped(activity)
                        if status:
                            path_planner.set_visited(activity)
                            collection_GUI_explore(d, deviceId, path_planner, timeout=60)
                            break

        cur_test_time = datetime.now()
        delta = (cur_test_time - test_start_time).total_seconds()

    print('visited rate:%s in %s seconds' % (path_planner.get_visited_rate(), test_time))
    path_planner.log_visited_rate(visited_rate, path=log_save_path)
    return


def collect_GUI():
    print('collect current GUI')
    time.sleep(3)
    return


if __name__ == '__main__':
    # deviceId = '192.168.57.105'
    deviceId = '192.168.57.105:5555'
    # deviceId = 'cb8c90f4'
    # deviceId = 'VEG0220B17010232'
    apk_path = r'../data/repackaged_apks/wish.apk'
    atg_json = r'../data/activity_atg/wish.json'
    deeplinks_json = r'../data/deeplinks.json'
    log = r'../data/visited_rate/wish.txt'

    # log in the app in advance and set the parameter reinstall as false to explore app with login
    # there may be unpredictable issues, so pls run each app multiple times.
    # logging in and granting permission in advance will help a lot
    unit_dynamic_testing(deviceId, apk_path, atg_json, deeplinks_json, log, reinstall=True)
