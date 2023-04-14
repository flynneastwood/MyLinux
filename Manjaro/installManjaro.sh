#!/bin/bash

# Update mirror list and system
echo "Updating mirror list and system..."
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

# Enable SSD TRIM
echo "Enabling SSD TRIM..."
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer

# Reduce swappiness
echo "Reducing swappiness..."
echo "vm.swappiness=60" | sudo tee -a /etc/sysctl.d/99-swappiness.conf
sudo sysctl --system

# Enable firewall
echo "Enabling firewall..."
sudo systemctl enable ufw
sudo systemctl start ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

sudo sed --in-place "s/#EnableAUR/EnableAUR/" "/etc/pamac.conf" #enbales AUR support for Pamac
sudo pacman -Syu --noconfirm #No confrim command does not work.

#Install softwares

echo "Installing softwares."

sudo pacman -S --noconfirm --needed blender cuda git krita obs-studio gpicview libreoffice-still baobab pantheon-calculator reaper discord

echo "Installs Brave browser"
sudo pacman-mirrors --api --set-branch stable && echo "Server = https://brave-browser-arch.stable.arhag.io/\$arch/" | sudo tee -a /etc/pacman.conf && sudo pacman-key --recv-key 3050AC3CD2AE6F03 && sudo pacman-key --lsign-key 3050AC3CD2AE6F03
sudo pacman -Syy
sudo pacman -S brave-browser

echo "Done installing softwares."

#Installs configs for softwares
echo "Installing software configs"
bash ./installSoftwareConfigs.sh

sudo pacman -S noto-fonts-emoji --noconfirm #Enable support for emoji
sudo pamac install ttf-ms-fonts --no-confirm #Enables default microsoft fonts

echo "Setting up desktop theme and appearances"
bash ./setAppearance.sh






