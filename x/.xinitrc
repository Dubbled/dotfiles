#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -fill .chicago.jpg # -blur 9
}

env() {
	compton -b --vsync opengl --config ~/.config/compton/config
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar &
	exec bspwm
	#exec openbox-session
}
graphics
env
run
