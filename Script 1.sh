#!/bin/bash
# Script 1: System Identity Report
# This script displays basic information about the Linux system

# ----------- USER DETAILS -----------
STUDENT_NAME="Suryansh Balani"         # Store your name
SOFTWARE_CHOICE="Git"            # Store chosen software name

# ----------- SYSTEM INFO COMMANDS -----------
KERNEL=$(uname -r)               # Gets kernel version
USER_NAME=$(whoami)              # Gets current logged-in user
UPTIME=$(uptime -p)              # Gets system uptime in readable format
DATE=$(date)                     # Gets current date and time

# Extracts Linux distribution name from os-release file
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)

# ----------- OUTPUT DISPLAY -----------
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Distro  : $DISTRO"
echo "Date    : $DATE"

# General message about Linux licensing
echo "License : GNU General Public License v2 (GPLv2)"
