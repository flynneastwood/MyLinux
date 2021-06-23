#!/bin/bash

 function download_reaper {
        curl https://dlcf.reaper.fm/6.x/reaper629_linux_aarch64.tar.xz --output /home/$USER/Downloads/reaper.tar.xz
	echo "Download completed" 
}

 function untar_reaper {
	echo "Untaring Reaper" 
	cd /home/$USER/Downloads
        tar -xvf /home/$USER/Downloads/reaper.tar.xz
	echo "Untar completed" 
}

 function installing_reaper {
	echo "Installing Reaper in programs."
        cd /home/$USER/Downloads
	sudo mv reaper* /usr/bin
	cd /usr/bin/reaper_*
	bash ./install-reaper.sh -A
	
	echo "Reaper install completed"
	
 }

download_reaper
untar_reaper
installing_reaper

