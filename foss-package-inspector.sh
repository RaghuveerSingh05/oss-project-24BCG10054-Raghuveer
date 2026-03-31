#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"   # e.g. apache2, mysql, vlc, firefox

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|License|Description'
else
    echo "$PACKAGE is NOT installed."
fi

#Statements
case $PACKAGE in
    apache2)
        echo "Apache: the web server that built the open internet" ;;

    mysql-server)
        echo "MySQL: open source at the heart of millions of apps";;
    git)
        echo "Git: distributed version control that enables collaboration" ;;
    firefox)
        echo "Firefox: a browser supporting an open and free web" ;;
            *)
        echo "No philosophy note available for this package" ;;
esac
