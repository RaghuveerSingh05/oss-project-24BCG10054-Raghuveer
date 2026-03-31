#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword
COUNT=0

# check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found"
    exit 1
fi

# check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty, try again later"
    exit 1
fi

# reading file line by line
while read LINE
do
    echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo ""
echo "Total '$KEYWORD' found: $COUNT"

# show last 5 matches
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
