#!/bin/sh
$HOME/.local/bin/autostartrc &
doas mount /dev/sda3 /home/lu/hdd
doas mount /dev/nvme0n1p2 /home/lu/ssd
dwm &
exec rubyxsr & 
sleep infinity
