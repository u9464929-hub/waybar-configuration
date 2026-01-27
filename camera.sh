#!/bin/bash

# Check if snapshot is running
if pgrep -x "snapshot" > /dev/null; then
    pkill -x "snapshot"
else
    snapshot &
fi
