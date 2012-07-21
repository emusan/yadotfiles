# make background solid black for now
xsetroot -solid black

# swaps my caps lock for escape, very handy, and who uses caps lock anyway???
# thanks to the vim wikia for the method of doing this(though they kept caps
# lock around by putting it on escape, but I see no need for that...
xmodmap .speedswapper

xrdb -merge ~/.Xresources

# I use nitrogen to set my background, you probably don't need this
nitrogen --set-auto ~/background.png

# start dat poison
exec /usr/bin/ratpoison

