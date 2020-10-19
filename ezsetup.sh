#!/bin/bash

# Update defaults stuff then install GnomeTweaks and Extensions
sudo apt-get update && apt-get upgrade
sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell

# Change gnome-tweaks values
gsettings set org.gnome.desktop.wm.preferences focus-mode mouse

# Install applications
sudo snap install blender --classic
sudo snap install krita
sudo snap install lbry
sudo apt-get install ffmpeg
sudo snap install obs
sudo snap install pycharm-community
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



# Install theme
gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-light'


echo "Update done"
