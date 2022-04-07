from dis import dis
import psutil
import platform
from gpiozero import CPUTemperature
from uptime import uptime
import datetime

hostname = platform.uname().node
cpu_usage = psutil.cpu_percent()
cpu_temp = CPUTemperature.temperature
memory_usage = psutil.virtual_memory().percent

print(hostname)
print(str(datetime.timedelta(seconds=uptime)))
print(str(cpu_usage) + "%")
print(str(cpu_temp) + "*C")
print(str(memory_usage) + "%")
