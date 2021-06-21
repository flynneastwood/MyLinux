#!/bin/bash

#Sets the essentials
bash ./ssdtrim.sh
bash ./tweakswappiness.sh
bash ./setFirewall.sh
bash ./settingMirrors.sh

sudo pacman -Syu

#Install softwares

echo "Installing softwares."

echo "Installs Blender 2.93"
curl https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.93/blender-2.93.0-linux-x64.tar.xz --output /home/tony/Downloads/blender.tar.xz
tar -xvf /home/tony/Downloads/blender.tar.xz

echo "Installs Krita"
sudo pamac install krita --no-confirm

echo "Installs LBRY"
sudo pamac install lbry-app-bin --no-confirm

echo "Installs OBS"
sudo pamac install obs-studio --no-confirm

echo "Installs JACK"
sudo pamac install qjackctl --no-confirm

echo "Installs the image viewer"
sudo pamac install gpicview --no-confirm

echo "Installs VLC"
sudo pamac install vlc --no-confirm

echo "Installs LibreOffice"
sudo pamac install libreoffice --no-confirm

echo "Installs Brave browser"
sudo pamac install brave --no-confirm

echo "Done installing softwares."

#Sets the appearance with icons and themes
sudo cp -ra .icons /home/tony/.icons
sudo cp -ra .themes /home/tony/.themes

#Sets xconf values

xfconf-query -c xfwm4 -p /general/theme -s Gn-OSX-XFCE-Edition-1.2
xfconf-query -c xsettings -p /Net/IconThemeName -s McMojave-circle



