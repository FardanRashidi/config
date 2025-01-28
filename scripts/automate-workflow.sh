#!/bin/bash

# Open terminal and send tmux keybindings
kitty -- tmux 
sleep 2  # Wait for terminal to open

# Simulate Ctrl+b and then Ctrl+r in tmux
xdotool key ctrl+b
xdotool key ctrl+r
sleep 1  # Wait for the tmux action to complete

# Switch to workspace 2 and open browser
xdotool key super+2  
sleep 2  # Wait for workspace change
xdotool key super+b
sleep 2  # Wait for the browser to open

# Switch to workspace 3 and open cursor tool
xdotool key super+3  # Replace 'super' with your "Windows key"
sleep 2  # Wait for workspace change
xdotool key super+c
