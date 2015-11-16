#!/bin/bash

# Define destination file name
dest=$1
if [ -z "$dest" ]; then
    base=scrot-`date +%Y%m%d%H%M`
    ext=png
    dest=$base.$ext
else
    base=`basename $dest | cut -d. -f1`
    ext=`echo $dest | cut -d. -f2-`
fi

# Remove tmp files
rm -fr /tmp/$base-desk*.$ext

# Save workspace count
deskn=`wmctrl -d | wc -l`
# Save workspace list
desks=`wmctrl -d | cut -d' ' -f1`
# Save current workspace
current=`wmctrl -d | grep '*' | cut -d' ' -f1`

# Iterate over workspaces
for desk in $desks; do
    # Move to such workspace
    wmctrl -s $desk
    # Take a rest (for xcompmgr/compiz animations)
    sleep 1
    # Take workspace screenshot
    # (Note: I prefer scrot because import ignores some transparency)
    tmpdest=/tmp/$base-desk$desk.$ext
    scrot $tmpdest || import -window root $tmpdest
done
