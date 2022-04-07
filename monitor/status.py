from dis import dis
import psutil
import platform
from gpiozero import CPUTemperature
import time

hostname = platform.uname().node
uptime = time.time() - psutil.boot_time() / 60
cpu_usage = psutil.cpu_percent()
cpu_temp = CPUTemperature.temperature
memory_usage = psutil.virtual_memory().percent
#disk_usage = psutil.disk_usage().percent

print(hostname)
print(str(uptime) + " minutes")
print(str(cpu_usage) + "%")
print(str(cpu_temp) + "*C")
print(str(memory_usage) + "%")
#print(str(disk_usage) + "%")
