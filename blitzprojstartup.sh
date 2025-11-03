#!/bin/bash

if [ -z "~/Documents/B.L.I.T.Z/system_data/name.txt" ]; then
    echo "UNDEFINED BEHAVIOR: No name.txt file found in ~/Documents/B.L.I.T.Z/system_data/"
    exit 1
fi

NAME=$(cat ~/Documents/B.L.I.T.Z/system_data/name.txt)

if [ "$NAME" != "blitz-pi-random-name-1234" ]; then
    exit 0
fi

function get_name() {
    read -p "Enter a name for the Blitz Pi: " NEW_NAME
    if [[ "$NEW_NAME" == *" "* ]]; then
        echo "Name cannot contain spaces, try again"
        get_name
    fi
    echo "$NEW_NAME"
}

NAME=$(get_name)
echo "$NAME" > ~/Documents/B.L.I.T.Z/system_data/name.txt
reboot