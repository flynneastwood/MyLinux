#!/bin/bash

# Update defaults stuff then install GnomeTweaks and Extensions
sudo apt-get update && apt-get upgrade
sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell
sudo apt install gnome-shell-extensions

# Change gnome-tweaks values


# Install applications
sudo snap install blender --classic
sudo snap install krita
sudo snap install lbry
sudo apt-get install ffmpeg
sudo apt-get install obs-studio
sudo apt-get install qjackctl
sudo snap install vlc
sudo snap install libreoffice
sudo apt-get install rawtherapee

# Install Brave
sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser


# Copy themes, icons and font to Home
sudo cp -ra .icons /home/tony/.icons
sudo cp -ra .themes /home/tony/.themes
sudo cp -ra backgrounds /usr/share/backgrounds


# Install theme
gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-light'
gsettings set org.gnome.desktop.interface gtk-key-theme 'Mojave-light'
gsettings set org.gnome.desktop.wm.preferences theme 'Mojave-light'
gsettings set org.gnome.desktop.interface icon-theme 'Os-Catalina-icons'
gsettings set org.gnome.desktop.interface cursor-theme 'capitaine-cursors'

#Setting up Interface Fonts
gsettings set org.gnome.desktop.interface document-font-name 'Garuda Regular 11'
gsettings set org.gnome.desktop.interface font-name 'Garuda Regular 11'


# Disable Desktop Home and Trash
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false

#Nautilus Settings, Auto focus, Dock position
gsettings set gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set gsettings set org.gnome.desktop.wm.preferences auto-raise true
gsettings set org.gnome.desktop.wm.preferences focus-mode mouse
gsettings set org.gnome.desktop.interface enable-hot-corners true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.overrides attach-modal-dialogs false

#Set backgrounds
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/backgrounds/2020-05-20-00-41-56-MacWallpaper02.png'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/backgrounds/2020-05-20-00-41-56-MacWallpaper02.png'


echo "Update done"
