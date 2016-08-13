up=`curl "https://puush.me/api/up" -F "k=plop_your_puush_api_key_here" -F \
"z=waifu" -F "f=@/tmp/ss.png" | sed -E 's/^.+,(.+),.+,.+$/\1\n/'`
printf $up | xclip -selection "clipboard"
notify-send "puush complete!" "$up"
rm /tmp/ss.png