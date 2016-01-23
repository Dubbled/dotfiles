#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	hsetroot -tile .tile.jpg
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
}

env() {
	compton --config ~/.config/compton/config -b
	sxhkd &
}
run() {
	runbar | sh &
	exec bspwm
}
graphics
env
run
