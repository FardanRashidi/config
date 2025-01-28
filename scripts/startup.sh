#!/bin/bash

LOG_FILE="$HOME/startup.log"
#BACKUP_LOG="$HOME/startup_$(date +'%Y%m%d_%H%M%S').log"

# Backup old log file with a timestamp
#if [ -f "$LOG_FILE" ]; then
#    mv "$LOG_FILE" "$BACKUP_LOG"
#    echo "Old log backed up as $BACKUP_LOG"
#fi

# Clear the log file
> "$LOG_FILE"

exec > >(tee -a "$LOG_FILE") 2>&1
echo "Startup script started at $(date)."

echo "Battery optimization starting."

echo "kill OSK to hide it"
#kill -34 $(ps -C wvkbd-mobintl)

# 2. Set asusctl to Quiet mode
echo "Setting ASUS Quiet profile..."
asusctl profile -P Quiet && echo "ASUS Quiet mode enabled." || echo "ASUS profile failed."

# 3. Disable WiFi 
#echo "Disabling WiFi..."
#nmcli radio wifi off && echo "WiFi diabled." || echo "WiFi disabling failed."

# 5. Disable Bluetooth
#echo "Disabling Bluetooth..."
#rfkill block bluetooth && echo "Bluetooth disabled." || echo "Bluetooth disabling failed."

# 6. Disable CPU Cores
echo "Disabling Cores..."
#sudo bash -c 'for ((i=4;i<$(nproc);i++)); do echo 0 > /sys/devices/system/cpu/cpu$i/online; done'
#sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu10/online'
#sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu11/online'
#sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu12/online'
#sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu13/online'
#sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu14/online'
#sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpu15/online'

# 10. Reduce display brightness
#echo "Reducing display brightness to 20%..."
#brightnessctl set 20% && echo "Display brightness reduced." || echo "Failed to set brightness."

echo "Battery optimization completed at $(date)."


