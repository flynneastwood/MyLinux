#!/bin/bash

mkdir png

for i in ./*.tga ./*.TGA

do	
	magick convert -flip $i ./png/$i.png;
done

cd png

for i in ./*.png
	do newfile=${i/.tga.png/.png}; 
	mv $i $newfile;
done
