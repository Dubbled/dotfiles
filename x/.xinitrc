#!/bin/sh

. $HOME/.bin/colr
xrdb -load ~/.Xresources
xsetroot -cursor_name left_ptr
cm start
xset +fp /usr/share/fonts/artwiz-fonts
xset fp rehash
hsetroot -solid "#1e1e1e"
synergc exodus
exec bsp 
