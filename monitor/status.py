from dis import dis
import psutil
import platform
from gpiozero import CPUTemperature
from uptime import uptime
hostname = platform.uname().node
cpu_usage = psutil.cpu_percent()
cpu_temp = CPUTemperature.temperature
memory_usage = psutil.virtual_memory().percent

def sec_to_hours(seconds):
    a=str(seconds//3600)
    b=str((seconds%3600)//60)
    c=str((seconds%3600)%60)
    d=["{} hours {} mins {} seconds".format(a, b, c)]
    return d

print(hostname)
print(sec_to_hours(uptime))
print(str(cpu_usage) + "%")
print(str(cpu_temp) + "*C")
print(str(memory_usage) + "%")
