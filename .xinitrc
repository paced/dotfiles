# Set background image.

feh --bg-center wheat ~/Pictures/Wallpapers/wheat.jpg

# Set environment variables.

export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'geany'; \
else echo 'nvim'; fi)"
export BROWSER='firefox'

# Start music daemon.
mpd &

# Enable compositor.
compton &

# Enable redshift for Melbourne, Australia.

redshift -l 37.8136:144.9631 &

# Disable clicks and scrolling when typing.
syndaemon -t -k -i 1 &

# Start i3.
exec i3
