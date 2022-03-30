#!/bin/bash

COLOUR_YELLOW="\e[1;33m"
COLOUR_GREEN="\e[1;32m"

sudo rm -rf ~/.config/Chromium/Singleton*
sudo rm -rf ~/.config/chromium/Singleton*
sudo rm -r ~/.cache/Chromium/Default/Cache/*
sudo rm -r ~/.cache/chromium/Default/Cache/*

echo "${COLOUR_GREEN}Chromium config and cache files was successfully removed.\e[0m"
echo "${COLOUR_YELLOW}Rebooting in 10 seconds...\e[0m"
sleep 10
echo "${COLOUR_YELLOW}Rebooting...\e[0m"
sleep 2
sudo reboot
