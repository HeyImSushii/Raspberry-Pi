#!/bin/sh

hostname=$(hostname);
kernel=$(uname -r);
uptime=$(uptime -p | sed s/"up "//);
cpu=$(echo "CPU Usage: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%" | sed s/"CPU Usage: "//);

jo '{"hostname": "%s", "kernel": "%s", "uptime": "%s", "cpu": "%s"}' "$hostname" "$kernel" "$uptime" "$cpu" > hostname.json
