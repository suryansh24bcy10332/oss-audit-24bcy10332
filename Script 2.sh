#!/bin/bash
# Script 2: FOSS Package Inspector
# This script checks if a package is installed and shows basic details

PACKAGE="git"   # Name of package to check

# ----------- CHECK IF INSTALLED -----------
# command -v checks if the command exists in system PATH
if command -v $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    
    # Display version of Git
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

# ----------- CASE STATEMENT -----------
# Prints a short description based on package name
case $PACKAGE in
    git) echo "Git: distributed version control built for open collaboration" ;;
    apache) echo "Apache: powers a huge portion of the web" ;;
    mysql) echo "MySQL: database behind countless applications" ;;
    vlc) echo "VLC: media player that supports almost everything" ;;
    *) echo "Unknown package" ;;   # Default case
esac
