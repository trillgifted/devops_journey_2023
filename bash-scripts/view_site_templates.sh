#!/bin/bash

input=0

while [ $input -ne 4 ]; do
    echo "what site do you want"
    echo "1. medical"
    echo "2. boxing"
    echo "3. carvilla"
    echo "4. quit"
    echo -n ":"

    read input
    #This stops printing to the screen
    exec &>/dev/null
    case $input in
        1)
            wget https://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip
            unzip mediplus-lite.zip
            cd mediplus-lite
            xdg-open index.html
            ;;
        2)
            wget https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip
            unzip oxer.zip
            cd oxer-html
            xdg-open index.html
            ;;
        3)
            wget https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip
            unzip carvilla.zip
            cd carvilla-v1.0
            xdg-open index.html
            ;;
        4)
            echo "Exiting..."
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
    exec 1>&1
    exec 2>&2
    echo
done
