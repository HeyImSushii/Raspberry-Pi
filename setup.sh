#!/bin/bash

COLOUR_YELLOW="\e[1;33m"
COLOUR_GREEN="\e[1;32m"

echo "${COLOUR_YELLOW}Configuring Raspberrry Pi...\e[0m"

# Set hostname
read -p 'Hostname: ' hostname

echo "${COLOUR_GREEN}The hostname has been changed to ${HOSTNAME}\e[0m"
hostnamectl $hostname

# Enabling SSH
systemctl enable sshd
systemctl start sshd
echo "${COLOUR_GREEN}SSH has been enabeled.\e[0m"

# IP whitelisted
sudo ufw allow from 128.39.112.1/22 to any port 22 proto tcp
echo "${COLOUR_GREEN}Student IP-range has been whitelisted.\e[0m"

# Change URL idk
sed -i 's/Kongsberg/Vestfold/' "/etc/xdg/openbox/autostart"
echo "${COLOUR_GREEN}Kiosk URL updated.\e[0m"

echo "${COLOUR_YELLOW}Raspberrry Pi has been configured!\e[0m"

# Reboot
echo "${COLOUR_YELLOW}Reboot required, rebooting in 10 seconds.\e[0m"
#sleep 10
#sudo reboot
