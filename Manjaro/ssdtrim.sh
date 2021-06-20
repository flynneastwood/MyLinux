#!/bin/bash

echo "Enables SSD Trim"
sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.timer
echo "SSD Trim enabled"

done