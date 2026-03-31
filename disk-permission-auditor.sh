#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/home" "/var/log")

echo "-----------------------------"
echo "Directory Audit"
echo "-----------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        echo ""
        echo "Checking: $DIR"

        # show permissions
        ls -ld "$DIR"

        # show size
        du -sh "$DIR" 2>/dev/null
    else
        echo "$DIR not found"
    fi
done
