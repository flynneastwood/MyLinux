#!/bin/bash

for i in ./*.tga ./*.TGA

do	
	magick convert -flip $i $i.png
	sed 's/S//'	
done