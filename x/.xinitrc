#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -fill .wall.jpg
}

env() {
	compton -b --vsync opengl --config ~/.config/compton/config
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar &
	bspwm &
	exec xfce4-session
	#exec swm
	#exec herbstluftwm
}
graphics
env
run
