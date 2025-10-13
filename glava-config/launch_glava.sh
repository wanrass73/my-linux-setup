#!/bin/bash

# Kill any existing Glava instances
killall glava

# Launch Glava in the background
glava --desktop &

# Give Glava a moment to start and create its window
sleep 2

# Find Glava's window ID and move/resize it
# Replace "GLava" with the actual window title if it's different
# The geometry is WxH+X+Y
xdotool search --name "GLava" windowmove 0 668 windowsize 1366 100