#!/bin/bash

 function download_bl {
        sudo pamac install blender --no-confirm
	echo "Download completed" 
}

 function config_bl {
	echo "Configuring"
	
 }

download_bl
config_bl

