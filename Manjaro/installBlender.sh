#!/bin/bash

 function download_bl {
        curl https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.93/blender-2.93.0-linux-x64.tar.xz --output /home/$USER/Downloads/blender.tar.xz
	echo "Download completed" 
}

 function uncompress_bl {
	echo "Untaring"
        cd /home/$USER/Downloads
	sudo tar -xvf blender.tar.xz
	
 }

 function installing_bl {
	echo "Installing in programs."
        cd /home/$USER/Downloads
	sudo mv blender-* /usr/bin
	
 }

 function launcher_bl {
	echo "Install to launcher"
	cd /usr/bin/blender*
	cp blender.desktop usr/share/applications 
}

download_bl
uncompress_bl
installing_bl
launcher_bl

