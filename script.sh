#!/bin/bash
RESET='\033[0m'
WHITE_R='\033[39m'
RED='\033[1;31m' # Light Red.
GREEN='\033[1;32m' # Light Green.
echo -e "${GREEN}Installing Google Chrome\n${RESET}"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb
echo -e "${GREEN}Updating Packages\n${RESET}"
sudo apt update
sudo apt upgrade
echo -e "${GREEN}Installing Nala\n${RESET}"
echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian->
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-ar>
sudo apt update
sudo apt install nala
echo -e "${GREEN}Installing Snapd\n${RESET}"
sudo nala install snapd
echo -e "${RED}Unistalling Firefox\n${RESET}"
sudo nala purge firefox
sudo snap remove firefox
echo -e "${GREEN}Installing Gnome-Tweaks\n${RESET}"
sudo nala install gnome-tweaks
echo -e "${GREEN}Installing Authy\n${RESET}"
sudo snap install authy
echo -e "${GREEN}Installing Bitwarden\n${RESET}"
sudo snap install bitwarden
echo -e "${GREEN}Script is done"
