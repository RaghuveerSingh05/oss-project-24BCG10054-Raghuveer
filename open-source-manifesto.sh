#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# writing manifesto to file
echo "On $DATE, I thought about open source." > $OUTPUT
echo "I use $TOOL in my daily work." >> $OUTPUT
echo "For me, freedom means $FREEDOM." >> $OUTPUT
echo "I would like to build $BUILD and share it with others." >> $OUTPUT
echo "Open source helps people learn and work together." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

cat $OUTPUT
