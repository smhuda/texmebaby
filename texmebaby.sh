#!/bin/bash
#title           :Tex Me Baby One More Time
#description     :This converts Markdown files to a PDF document in Latex
#author          :Syed Huda
#date            :18-03-2020
#version         :0.1    
#usage		     :bash texmebaby.sh
#notes           :sudo apt install pandoc
#bash            :5.0.16(1)-release
#==============================================================================

echo " ___                     _                _                             ___ "           
echo "  |  _       |\/|  _    |_)  _. |_       / \ ._   _    |\/|  _  ._ _     | o ._ _   _  "
echo "  | (/_ ><   |  | (/_   |_) (_| |_) \/   \_/ | | (/_   |  | (_) | (/_    | | | | | (/_ "
                                                                            
echo ""
echo ""
echo "##########      Author: Syed Huda      ##########"
echo "##########      Script: Tex Me Baby    ##########"
echo "##########      Version: v0.1          ##########"
echo ""

function command_exists () {
    command -v $1 >/dev/null 2>&1;
}

if ! command_exists pandoc; then
    echo "Error: Please install pandoc package using sudo apt install pandoc and re-run the script"
    exit;
fi

generate_pdf() {
    now=$(date +"%m_%d_%Y")
    pandoc -f markdown -s --dpi=300 -V geometry:margin=4cm,landscape -t latex -o "Converted-$now.pdf" *.md
}


generate() {
    echo -n "Generating document please wait a moment ($1)......."
    echo ".."
    echo ".."
    echo ".."
    sleep 1s
    echo ".."
    echo ".."
    echo ".."
    if [ -d "$1" ]; 
    then
        cd "$1"
        generate_pdf $1
        cd ..
	echo ".."
        echo ".."
        echo ".."
        echo ".."
        echo "Finished processing!"
        echo "====================="
    else
        echo "Error! No Makdown files found in directory $1"
    fi
}

generate "docs"

echo ""
echo ""
echo ""
echo "Generated Converted-$now.pdf successfully!"

