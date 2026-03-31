#!/bin/bash
# Script 1: System Identity Report
# Author: raghuveer | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="raghuveer"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
HOME_DIR=$HOME
DISTRO=$(lsb_release -d | cut -f2)
DATE=$(date)

# --- Display ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAM"
echo "Home Dir: $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Distro  : $DISTRO"
echo "Date    : $DATE"
echo ""
echo "License : This system is covered under open-sources licenses like GPL."
