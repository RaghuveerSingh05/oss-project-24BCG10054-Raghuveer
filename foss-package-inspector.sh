#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"
# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

#Statements
case $PACKAGE in
    apache2)
        echo "Apache: the web server that built the open internet" ;;

    mysql-server)
        echo "MySQL: open source database";;
    git)
        echo "Git: distributed version control system for tracking the code" ;;
    firefox)
        echo "Firefox: open source browser" ;;
            *)
        echo "Unknown package" ;;
esac
