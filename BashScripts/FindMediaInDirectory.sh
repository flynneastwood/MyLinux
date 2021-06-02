#!/bin/bash

videofiles=$(ls */*.avi */*.mp4) 

for i in $videofiles
	
	do cp $i ./ #copy the video to the root directory
	
	done


