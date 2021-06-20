#!/bin/bash

#Sets the essentials

echo "Setting up mirrors"
sudo pacman-mirrors --fasttrack
echo "Setting up mirrors successful"

echo "Update the system"
sudo pacman -Syyu

echo "Enables SSD Trim"
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer
echo "SSD Trim enabled"

echo "Tweaks swappiness for RAM usage"
sudo echo "vm.swappiness=10" > /etc/sysctl.d/100-manjaro.conf
echo "Swappiness tweaks done"

echo "Enable the Firewall"
sudo ufw enable
sudo systemctl enable ufw
echo "Firewall enabled"

#Install softwares

echo "Installs Blender 2.93"
curl https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.93/blender-2.93.0-linux-x64.tar.xz --output /home/tony/Downloads/blender.tar.xz
tar -xvf /home/tony/Downloads/blender.tar.xz

echo "Installs Krita"
sudo pamac install krita

echo "Installs LBRY"
sudo pamac install lbry-app-bin

echo "Installs OBS"
sudo pamac install obs-studio

echo "Installs JACK"
sudo pamac install qjackctl

echo "Installs the image viewer"
sudo pamac install gpicview

echo "Installs VLC"
sudo pamac install vlc

echo "Installs LibreOffice"
sudo pamac install libreoffice

echo "Installs Brave browser"
sudo pamac install brave


#Sets the appearance with icons and themes
sudo cp -ra .icons /home/tony/.icons
sudo cp -ra .themes /home/tony/.themes

gsettings set org.gnome.desktop.interface gtk-theme 'McOS-XFCE-Edition-II-1'
gsettings set org.gnome.desktop.interface icon-theme 'McMojave-circle'

#	
 




