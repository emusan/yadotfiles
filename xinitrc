# make background solid black for now
xsetroot -solid black

# swaps my caps lock for Control_L, which xcape (see below) in turn swaps
# for escape when pressed, and Control_L when held, very handy, and who
# uses caps lock anyway??? thanks to the vim wikia for the method of doing
# this(though they kept caps lock around by putting it on escape, but I see
# no need for that...)
xmodmap .speedswapper2

# xcape: swaps Control_L (caps lock as well since I did a swap for that 
# above) for escape when pressed and for ctrl when held and 
# another key is pressed :D Very useful for vimmies like me :3
xcape -e 'Control_L=Escape'

xrdb -merge ~/.Xresources

# I use nitrogen to set my background, you probably don't need this
nitrogen --set-auto ~/background.png

# start dat poison
#exec /usr/bin/ratpoison

unclutter &
urxvt &
urxvt &
urxvt &
gvim &

while true ; do
    xsetroot -name "$(acpi -b | awk 'sub(/,/,"") {print $3, $4}')$( date +"    %F %R" )"
    sleep 1m
done &

exec /home/tom/progs/dwm/dwm
