#!/bin/bash

echo "Tweaks swappiness for RAM usage"
sudo echo "vm.swappiness=10" > /etc/sysctl.d/100-manjaro.conf
echo "Swappiness tweaks done"

done