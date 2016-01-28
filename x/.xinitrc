#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -fill ~/Pictures/snow.jpg -blur 3
}

env() {
	compton -b --vsync opengl --config ~/.config/compton/config
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar | sh &
	exec bspwm
}
graphics
env
run
