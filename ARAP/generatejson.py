import json
simpleTemplate={"Anti-Debugging":0,"Anti Virtual Environment": 0,"Anti-Tampering": 0,"Anti-Hooking": 0,"Root Detection": 0}

detailedTemplate={
    "Anti-Debugging":{
        "DebugSub":0,
        "Native Code Debugger":{
            "Using Timing Check": 0,
            "Using Signals": 0,
            "Using TracerPID": 0,
            "Preempt Ptrace API": 0,
            "Anti Dump": 0
        },
        "JDWP Debugger":{
            "Debugger Related Value": 0,
            "Debugger Related Value OLD": 0,            
            "Breakpointset Structure": 0,
            "Altering Debugger Memory": 0,
            "Altering Debugger Memory OLD": 0
            }},
    "Anti Virtual Environment":{
        "EnvironmentSub":0,
        "Anti-Emulator": {
            "Sum": 0,
            "Static": {
                "Device Identifier": 0,
                "Device Identifier OLD": 0,
                "Current Build": 0,
                "Current Build OLD": 0,
                "Telephony Manager": 0,
                "Hardware Components": 0,
                "Emulator Related Strings and System Properties": 0,
                "Emulator Related Strings and System Properties OLD": 0,                
                },
            "Dynamic":{
                "Sensor Information" : 0,
                "CPU Performance": {
                   "Context Switch Based Detection": 0,
                   "Translation Block Cache Based Detection": 0,
                   "Misaligned Vectorization Based Detection": 0,
                   "Updates to Execution State Bits": 0
                   }
                }},
        "Anti App-Level Virtualization":{
            "Sum" : 0,
            "File Path": 0,
            "Share UID": 0,
            "Port Detection": 0,
            "Code Injection And Hooking": 0
        }
    },
 
    "Anti-Tampering": {
        "TamperSub":0,
        "SafetyNet Attestation":0,
        "SafetyNet Attestation OLD":0,        
        "Installer Verification":0,
        "Installer Verification OLD":0,        
        "Code Integrity Checking": 0,
        "Code Integrity Checking OLD": 0,        
        "Signature Checking": 0,
        "Signature Checking OLD":0       
        },
    "Anti-Hooking": {
        "HookSub":0,
        "Xposed": 0,
        "Xposed OLD":0,        
        "Frida": 0,
        "Frida OLD": 0       
        },
    "Root Detection": {
        "RootSub":0,
        "Check Installed Packages": 0,
        "Check Shell Commands Execution": 0,
        "Check Build Tag and System Properties": 0,
        "Directory Permissions": 0
        },
    "Sum":{
        "Sub":0,
        "Major":0,
        "Sub_0":0,
        "Sub_1":0,
        "Sub_2":0,
        "Sub_3":0,
        "Sub_4":0,
        "Sub_5":0,
        "Sub_6":0,
        "Sub_7":0,
        "Sub_8":0,
        "Sub_9":0,
        "Sub_10":0,
        "Sub_11":0,
        "Sub_12":0,
        "Sub_13":0,
        "Sub_14":0,
        "Sub_15":0,
        "Sub_16":0,
        "Sub_17":0,
        "Sub_18":0,
        "Sub_19":0,
        "Sub_20":0,
        "Sub_21":0,
        "Sub_22":0,
        "Sub_23":0,
        "Sub_24":0,
        "Sub_25":0,
        "Sub_26":0,
        "Sub_27":0,
        "Sub_28":0,
        "Sub_29":0,
        "Sub_30":0,
        "Sub_31":0,
        "Sub_32":0,
        "Sub_33":0,
        "Sub_34":0,
        "Major_0":0,
        "Major_1":0,
        "Major_2":0,
        "Major_3":0,
        "Major_4":0,
        "Major_5":0
        }
    }



def GenerateSimpleJsonByTemplate(where,packageName):
    json.dump(simpleTemplate,open(where+packageName+'_simple.json','w'),indent=4)

def GenerateDetailedJsonByTemplate(where,packageName):
    json.dump(detailedTemplate,open(where+packageName+'_detailed.json','w'),indent=4)

if(__name__=="__main__"):
    GenerateSimpleJsonByTemplate("./","test")
    GenerateDetailedJsonByTemplate("./","test")
