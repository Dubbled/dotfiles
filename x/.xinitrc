#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -solid '#333333'
	xsetroot -cursor_name left_ptr
}

env() {
	cm start
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar &
	exec bspwm
}
graphics
env
run
