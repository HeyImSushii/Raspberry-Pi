from dis import dis
import psutil
import platform
from gpiozero import CPUTemperature
import os

hostname = platform.uname().node
uptime = os.popen("uptime").read()
cpu_usage = psutil.cpu_percent()
cpu_temp = CPUTemperature.temperature
memory_usage = psutil.virtual_memory().percent
#disk_usage = psutil.disk_usage().percent

print(hostname)
print(uptime)
print(str(cpu_usage) + "%")
print(str(cpu_temp) + "*C")
print(str(memory_usage) + "%")
#print(str(disk_usage) + "%")
