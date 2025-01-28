#!/bin/bash 

echo "Disabling Cores..."
sudo bash -c 'for ((i=4;i<$(nproc);i++)); do echo 0 > /sys/devices/system/cpu/cpu$i/online; done'
sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu10/online'
sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu11/online'
sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu12/online'
sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu13/online'
sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu14/online'
sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu15/online'

sudo powertop --auto-tune

sudo powertop
