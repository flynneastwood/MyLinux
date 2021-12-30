#!/bin/bash

 function config_blender {
	echo "Download Blender configs from Github" 
	git clone https://github.com/flynneastwood/blenderconfigs /home/$USER/Downloads

	#Installing base scene template        
	mkdir -p /home/$USER/.config/blender/3.0/config/	
	cp /home/$USER/Downloads/startup.blend /home/$USER/Downloads/userpref.blend /home/$USER/.config/blender/3.0/config
	echo "Base startup scene installed" 	
	
	#Video editing templates install	
	cp /home/$USER/Downloads/Video_Editing/startup.blend /usr/share/blender/3.*/scripts/startup/bl_app_templates_system/Video_Editing
	echo "Video editing template installed"
	
	#VFX templates install	
	cp /home/$USER/Downloads/VFX/startup.blend /usr/share/blender/3.*/scripts/startup/bl_app_templates_system/VFX
	echo "VFX template installed" 
}

config_blender


