#!/bin/bash

function usage {
	echo "Usage: $(basename $0) <options>" >&2
	echo "This script uploads screen regions to Imgur and returns a link." >&2
	echo "" >&2
	echo "Options:" >&2
	echo "-h, --help: Show this help message." >&2
	echo "-f: Screenshot full screen and upload." >&2
	echo "-s: Screenshot a selection and upload." >&2
	echo "-d: Screenshot all workspaces." >&2
}

if [ "$1" = "-h" -o "$1" = "--help" ]; then
	usage
	exit 0
elif [ "$1" == "-f" ]; then
	maim --hidecursor /tmp/ss.png
	notify-send "Fullscreen screenshot taken." >&2
	~/.bin/upload.sh
	exit 1
elif [ "$1" = "-s" ]; then
	maim --hidecursor -g $(slop -b 1 -c 1,1,1,1 -f "%wx%hx%xx%y ") /tmp/ss.png
	notify-send "Selective screenshot taken." >&2
	~/.bin/upload.sh /tmp/ss.png
	exit 1
elif [ "$1" = "-d" ]; then
	notify-send "Taking all-workspaces screenshot." >&2
	~/.bin/deskmaim.sh
	notify-send "All-workspace screenshot taken." >&2
	~/.bin/upload.sh /tmp/ss.png
	exit 1
fi
