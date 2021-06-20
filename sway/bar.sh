#!/bin/bash
datum=$(date +'%d-%m-%Y %H:%M:%S');
baterija=$(acpi);
tmp=${baterija#*,}
b=${tmp%,*}
green="\e[0;92m";
echo -e "$datum | 🔋$b | "
