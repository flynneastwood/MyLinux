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
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.d/99-swappiness.conf
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

#Installs a barebone calculator
pamac install pantheon-calculator --no-confirm #Does not finish?

echo "Installs Blender"
pamac install blender --no-confirm

echo "Installs Krita"
sudo pamac install krita --no-confirm

echo "Installs OBS"
sudo pamac install obs-studio --no-confirm

echo "Installs JACK"
sudo pamac install qjackctl --no-confirm

echo "Installs the image viewer"
sudo pamac install gpicview --no-confirm


#Too long to install. Synchronizing packages infinitely?
echo "Installs LibreOffice"
sudo pamac install libreoffice-fresh --no-confirm

echo "Installs Brave browser"
sudo pamac install brave --no-confirm #Synchronizing packages infinitely?

echo "Installs disk analyser"
sudo pamac install baobab --no-confirm

echo "Installs Reaper"
sudo pamac install reaper-bin --no-confirm

echo "Installs Discord"
sudo pamac install discord --no-confirm

echo "Done installing softwares."

#Installs configs for softwares
echo "Installing software configs"
bash ./installSoftwareConfigs.sh

sudo pacman -S noto-fonts-emoji --noconfirm #Enable support for emoji
sudo pamac install ttf-ms-fonts --no-confirm #Enables default microsoft fonts

echo "Setting up desktop theme and appearances"
bash ./setAppearance.sh






