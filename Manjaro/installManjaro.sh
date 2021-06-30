#!/bin/bash

#Sets the essentials
bash ./ssdtrim.sh
bash ./tweakswappiness.sh
bash ./setFirewall.sh
bash ./settingMirrors.sh

sudo pacman -Syu --noconfirm

#Install softwares

echo "Installing softwares."

#Installs a barebone calculator
pamac install pantheon-calculator

#Need to be tested
echo "Installs Blender 2.93"
bash ./installBlender.sh

cd /usr/bin/blender*
cp blender.desktop usr/share/application 

echo "Installs Krita"
sudo pamac install krita --no-confirm


#not found!!!
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

#Too long to install
echo "Installs LibreOffice"
sudo pamac install libreoffice --no-confirm

echo "Installs Brave browser"
sudo pamac install brave --no-confirm

echo "Installs disk analyser"
sudo pamac install baobab --no-confirm

echo "Installs Reaper"
bash ./installReaper.sh

echo "Done installing softwares."

#Installs configs for softwares
echo "Installing software configs"
bash ./installSoftwareConfigs.sh


#Sets the appearance with icons and themes
sudo cp -ra .icons /home/tony/.icons
sudo cp -ra .themes /home/tony/.themes

#Sets xconf values

#Sets the theme and icons
xfconf-query -c xfwm4 -p /general/theme -s Gn-OSX-XFCE-Edition-1.2
xfconf-query -c xsettings -p /Net/IconThemeName -s McMojave-circle

cp terminalrc /home/$USER/.config/xfce4/terminal #Terminal appearance settings

#Sets panels preferences
xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior -s 1 

#



