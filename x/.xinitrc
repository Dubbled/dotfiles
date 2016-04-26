#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -solid '#111111'
	xsetroot -cursor_name left_ptr
}

env() {
	cm start
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar &
	clock &
	loop &
	exec bsp
}
graphics
env
run
