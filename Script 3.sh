#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script checks directory size, permissions, and ownership

# ----------- DIRECTORY LIST -----------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# ----------- LOOP THROUGH DIRECTORIES -----------
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then   # Check if directory exists
        
        # ls -ld shows permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # du -sh gives total size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# ----------- CHECK GIT CONFIG FILE -----------
echo "Checking Git config file:"

# ~/.gitconfig is user-specific Git configuration
if [ -f "$HOME/.gitconfig" ]; then
    ls -l $HOME/.gitconfig
else
    echo "Git config file not found"
fi
