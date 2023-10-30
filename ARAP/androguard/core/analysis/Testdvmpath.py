from androguard.core.bytecodes import apk, dvm, axml
from androguard.core.analysis import analysis
import os
path =os.path.dirname(apk.__file__)
print(path)

path =os.path.dirname(dvm.__file__)
print(path)

path =os.path.dirname(axml.__file__)
print(path)

path =os.path.dirname(analysis.__file__)
print(path)

