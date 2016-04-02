#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -solid '#eeeeee' #-fill .chicago.jpg # -blur 9
}

env() {
	compton --config ~/.config/compton/config -b --backend glx --vsync opengl-swc
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar &
	bspwm &
	exec xfce4-session
	#exec openbox-session
}
graphics
env
run
