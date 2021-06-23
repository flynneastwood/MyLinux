#!/bin/bash

 function config_blender {
	echo "Download Blender configs from Github" 
	git clone https://github.com/flynneastwood/blenderconfigs

	#Installing base scene template        
	mkdir -p /home/$USER/.config/blender/2.93/config/	
	cp ./blenderconfigs/startup.blend ./blenderconfigs/userpref.blend /home/$USER/.config/blender/2.93/config
	echo "Base startup scene installed" 	
	
	#Video editing templates install	
	cp ./blenderconfigs/Video_Editing/startup.blend /usr/bin/blender-*/2.*/scripts/startup/bl_app_templates_system/Video_Editing
	echo "Video editing template installed"
	
	#VFX templates install	
	cp ./blenderconfigs/VFX/startup.blend /usr/bin/blender-*/2.*/scripts/startup/bl_app_templates_system/VFX
	echo "VFX template installed" 
}

config_blender


