from dis import dis
import psutil
import platform
from gpiozero import CPUTemperature

hostname = platform.uname().node()
cpu_usage = psutil.cpu_percent() + "%"
cpu_temp = CPUTemperature.temperature + "℃"
memory_usage = psutil.virtual_memory().percent + "%"
disk_usage = psutil.disk_usage().percent + "%"

print(hostname)
print(cpu_usage)
print(cpu_temp)
print(memory_usage)
print(disk_usage)