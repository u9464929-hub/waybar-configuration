#!/bin/bash

if pgrep -x "snapshot" > /dev/null; then
    # Camera is on
    echo '{"text": "", "class": "on", "tooltip": "Camera is On"}'
else
    # Camera is off
    echo '{"text": "", "class": "off", "tooltip": "Camera is Off"}'
fi
