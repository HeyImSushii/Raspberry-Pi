#!/bin/bash

COLOUR_YELLOW="\e[1;33m"
COLOUR_GREEN="\e[1;32m"

sudo rm -rf ~/.config/Chromium/Singleton*
sudo rm -rf ~/.config/chromium/Singleton*
sudo rm -r ~/.cache/Chromium/Default/Cache/*
sudo rm -r ~/.cache/chromium/Default/Cache/*
sudo reboot

echo "${COLOUR_GREEN}Kernel Update not required, already running ${CURRENT_KERNEL}.\e[0m"
echo "${COLOUR_YELLOW}Exiting script in 5 seconds.\e[0m"
