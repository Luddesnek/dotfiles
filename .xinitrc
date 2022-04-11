#!/bin/sh

while type dwm >/dev/null ; do dwm && continue || break ; done &
$HOME/.local/bin/autostart &
exec dwmblocks


