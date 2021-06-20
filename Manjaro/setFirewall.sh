#!/bin/bash

echo "Enable the Firewall"
sudo ufw enable
sudo systemctl enable ufw
echo "Firewall enabled"

done