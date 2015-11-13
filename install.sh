#!/bin/bash

dir=~/.dotfiles
backup=~/.dotfiles_backup
if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Moving to the $dir directory."
fi

cd $dir

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Done."
fi

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Updating dotfiles folder."
fi

git pull origin master

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Done."
fi

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Moving to home directory."
fi
cd ~/

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Done."
fi

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Creating $backup if it does not exist."
fi

mkdir -p $backup

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Done."
fi

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Moving to the $dir directory."

cd $dir

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Done."
fi

fds="config xbindkeysrc xinitrc zshrc asoundrc"

# Note: this will backup everything in your .config directory.
for fd in $fds; do
	if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
		echo "Moving any existing files/dirs from ~ to $backup."
	fi
	mv ~/.$file $backup
	if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
		echo "Done."
	fi
done

if [ "$1" == "--verbose" -o "$1" == "-v" ]; then
	echo "Moving files from dotfiles repo to ~."
fi
