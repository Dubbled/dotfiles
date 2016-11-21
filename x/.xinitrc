#!/bin/bash

. $HOME/.bin/colr

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --rate 144 --mode 1920x1080
	xsetroot -cursor_name left_ptr
}

env() {
	cm start
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
	urxvtd -q -f -o
}
run() {
	runbar &
	exec bsp
}
graphics
env
run
