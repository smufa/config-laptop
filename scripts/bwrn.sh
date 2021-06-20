#!/bin/bash
while :
do
    battery=$(acpi -b | cut -d" " -f4 | cut -d% -f1)
    if [[ battery -lt 10 ]] 
    then
        beep -f 100 -l 200 -r 2 -n -f 300 -l 150 -r 1
    fi
    sleep 60
done
