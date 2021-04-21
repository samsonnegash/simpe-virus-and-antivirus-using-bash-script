import subprocess
from subprocess import call

print("start")
rc = call("./sam.sh", shell=True)

print("end")