#!/bin/bash

COLOUR_YELLOW="\e[1;33m"
COLOUR_GREEN="\e[1;32m"

CURRENT_KERNEL=$(uname -r)
SAFE_KERNEL="5.10.103-v7+"
LATEST_KERNEL="5.15.28-v7+"

if [ $CURRENT_KERNEL == $LATEST_KERNEL ]; then
    echo "${COLOUR_GREEN}Kernel Update not required, already running ${CURRENT_KERNEL}.\e[0m"
    echo "${COLOUR_YELLOW}Exiting script in 5 seconds.\e[0m"
    sleep 5
    exit
else
    echo "${COLOUR_YELLOW}Updating packages...\e[0m"
    sudo apt update -y
    echo "${COLOUR_GREEN}Packages upgraded!\e[0m"
    echo "${COLOUR_YELLOW}Updating Kernel version...\e[0m"
    sudo rpi-update 87c6654a59e0ae6d09869fffceb44c5c698a7d83 -y
    echo "${COLOUR_GREEN}Kernel successfully updated!\e[0m"
    echo "${COLOUR_YELLOW}Rebooting in 10 seconds...\e[0m"
    sleep 10
    echo "${COLOUR_YELLOW}Rebooting...\e[0m"
    sleep 2
    sudo reboot
fi
