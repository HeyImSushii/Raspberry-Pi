#!/bin/sh

hostname=$(hostname);
kernel=$(uname -r);
uptime=$(uptime -p | sed s/","// | sed s/"up "//);
cpu_usage=$(echo ""$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%" | sed s/"CPU Usage: "//);

jo hostname=$hostname kernel=$kernel uptime=$uptime cpu_usage=$cpu_usage > hostname.json
