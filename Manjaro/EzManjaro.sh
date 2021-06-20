#!/bin/bash

#Sets the essentials
bash ./ssdtrim.sh
bash ./tweakswappiness.sh
bash ./installBrave.sh
bash ./setFirewall.sh

#Install softwares

echo "Installing softwares."

#Sets the appearance with icons and themes
sudo cp -ra .icons /home/tony/.icons
sudo cp -ra .themes /home/tony/.themes

gsettings set org.gnome.desktop.interface gtk-theme 'McOS-XFCE-Edition-II-1'
gsettings set org.gnome.desktop.interface icon-theme 'McMojave-circle'


 




