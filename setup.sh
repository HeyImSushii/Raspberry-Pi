#!/bin/bash

COLOUR_YELLOW="\e[1;33m"
COLOUR_GREEN="\e[1;32m"

echo "${COLOUR_YELLOW}Configuring Raspberrry Pi...\e[0m"

# Set hostname
read -p 'Hostname: ' hostname

echo "${COLOUR_GREEN}The hostname has been changed to ${hostname}\e[0m"
sudo hostnamectl set-hostname {$hostname}

sleep 3

# Enabling SSH
sudo systemctl enable sshd
sudo systemctl start sshd
echo "${COLOUR_GREEN}SSH has been enabeled.\e[0m"

sleep 3

# IP whitelisted
sudo ufw allow from 128.39.112.1/22 to any port 22 proto tcp
echo "${COLOUR_GREEN}Student IP-range has been whitelisted.\e[0m"

sleep 3

# Change URL idk
sudo sed -i "s/Kongsberg/Vestfold/g" "/etc/xdg/openbox/autostart"
echo "${COLOUR_GREEN}Kiosk URL updated.\e[0m"

# Remove Chromium config files and cache
sudo rm -rf ~/.config/Chromium/Singleton*
sudo rm -rf ~/.config/chromium/Singleton*
sudo rm -r ~/.cache/Chromium/Default/Cache/*
sudo rm -r ~/.cache/chromium/Default/Cache/*
echo "${COLOUR_GREEN}Chromium config and cache files was successfully removed.\e[0m"

# Successfully configured
echo "${COLOUR_YELLOW}Raspberrry Pi has been configured!\e[0m"

sleep 3

# Reboot
echo "${COLOUR_YELLOW}Reboot required, rebooting in 10 seconds.\e[0m"
sleep 10
sudo reboot
