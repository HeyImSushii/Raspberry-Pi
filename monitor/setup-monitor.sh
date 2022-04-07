#!/bin/bash

COLOUR_YELLOW="\e[1;33m"
COLOUR_GREEN="\e[1;32m"

# Update packages
echo "${COLOUR_YELLOW}Updating packages...\e[0m"
sudo apt update -y
echo "${COLOUR_GREEN}Successfully updated packages!\e[0m"
sleep 3

# Install Python
echo "${COLOUR_YELLOW}Installing Python...\e[0m"
sudo apt install python -y
echo "${COLOUR_GREEN}Successfully installed Python 3!\e[0m"
sleep 3

# Install Pip
echo "${COLOUR_YELLOW}Installing Pip...\e[0m"
sudo apt install python3-pip
echo "${COLOUR_GREEN}Successfully installed Pip!\e[0m"
sleep 3

# Install required Python packages
echo "${COLOUR_YELLOW}Installing Python packages...\e[0m"
sudo pip3 install gpiozeroecho
sudo pip3 install psutil
sudo pip3 install platform
"${COLOUR_GREEN}Successfully installed Python packages!\e[0m"
sleep 3

echo "${COLOUR_GREEN}Starting monitor.sh script!\e[0m"