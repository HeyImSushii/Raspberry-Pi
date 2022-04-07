#!/bin/sh

readarray -t array <<< "$(df -h)";
var=$(echo "${array[1]}"| grep -aob '%' | grep -oE '[0-9]+');
df_output="${array[3]:$var-3:4}";

hostname=$(hostname);
kernel=$(uname -r);
uptime=$(uptime -p | sed s/"up "//);
cpu=$(echo "CPU Usage: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%" | sed s/"CPU Usage: "//);

jo '{"hostname": "%s", "kernel": "%s", "uptime": "%s", "cpu": "%s"}' "$hostname" "$kernel" "$uptime" "$cpu" > hostname.json
