#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=2

while IFS= read -r line

do
    echo "ine:$line"
    
done <<< $DISK_USAGE