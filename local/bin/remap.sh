setxkbmap se
xset r rate 250 33

xinput set-prop "pointer:Logitech K400" "Coordinate Transformation Matrix"\
	2.6 0 0 0 2.6 0 0 0 1

setxkbmap -option "caps:escape"

xmodmap -e "keycode 62 = slash"

# If Caps is on it gets turned off.
xset -q | grep "Caps Lock:\s*on" && xdotool key Caps_Lock
