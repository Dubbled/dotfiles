#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	hsetroot -fill ~/Pictures/chicago.jpg -blur 8
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
}

env() {
	compton --config ~/.config/compton/config -b
	sxhkd &
}
run() {
	runbar | sh &
	#bspwm &
	#exec xfce4-session
	wew | evhandle &
	exec xwait
}
graphics
env
run
