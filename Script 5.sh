#!/bin/bash
# Script 5: Open Source Manifesto Generator
# This script takes user input and creates a text file with a statement

echo "Answer three questions to generate your manifesto."
echo ""

# ----------- USER INPUT -----------
read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What would you build: " BUILD

# ----------- DATE & OUTPUT FILE -----------
DATE=$(date '+%d %B %Y')       # Get formatted date
OUTPUT="manifesto.txt"         # Output file name

# ----------- WRITE TO FILE -----------
# > creates/overwrites file, >> appends to file
echo "On $DATE, I reflect on open source." > $OUTPUT
echo "Using $TOOL daily reminds me that software freedom means $FREEDOM." >> $OUTPUT
echo "I aspire to build $BUILD and share it openly with the world." >> $OUTPUT

# ----------- DISPLAY RESULT -----------
echo "Saved to $OUTPUT"
cat $OUTPUT
