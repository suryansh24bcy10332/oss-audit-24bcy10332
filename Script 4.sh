#!/bin/bash
# Script 4: Log File Analyzer
# This script counts occurrences of a keyword in a log file

LOGFILE=$1                  # First argument: log file path
KEYWORD=${2:-"error"}      # Second argument (default = "error")
COUNT=0                    # Counter variable

# ----------- FILE CHECK -----------
if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

# ----------- READ FILE LINE BY LINE -----------
while IFS= read -r LINE; do
    
    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter
    fi

done < "$LOGFILE"

# ----------- OUTPUT RESULT -----------
echo "'$KEYWORD' found $COUNT times"

# Show last 5 matching lines
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
