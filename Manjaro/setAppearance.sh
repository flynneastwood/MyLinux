#!/bin/bash

#Sets the appearance with icons and themes
sudo cp -ra .icons /home/$USER/.icons
sudo cp -ra .themes /home/$USER/.themes

#Sets xconf values
#Sets the theme and icons
xfconf-query -c xfwm4 -p /general/theme -s Nordic-bluish-accent
xfconf-query -c xsettings -p /Net/ThemeName -s Nordic-bluish-accent
xfconf-query -c xsettings -p /Net/IconThemeName -s Nordic-Darker

#Sets background
sudo cp ./Backgrounds/*.jpg /usr/share/backgrounds/
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVirtual-1/workspace0/last-image -s /usr/share/backgrounds/flynneastwood_bg01.jpg

cp -n terminalrc /home/$USER/.config/xfce4/terminal #Terminal appearance settings

#Sets panels preferences
xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior -s 1 
