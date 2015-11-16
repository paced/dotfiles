# Set background image.
~/.fehbg &

# Initialise keybindings.
xbindkeys &

# Set environment variables.
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'subl3'; \
else echo 'nano'; fi)"
export BROWSER='firefox'

# Enable mpd but make sure it doesn't disturb, say, a lecture. 

amixer -q sset Master mute
mpd &
mpc pause
amixer -q sset Master on

# Enable scrobbler.

mpdscribble &

# Enable compositor.
compton &

# Enable redshift for Melbourne, Australia.
redshift -l 37.8136:144.9631 &

# Disable clicks and scrolling when typing.
syndaemon -t -k -i 1 &

# Start dunst daemon for notifications.
dunst &
notify-send "Welcome to Arch Linux!"

# Start i3-gaps-next-git.
exec i3
