#!/bin/sh

. $HOME/.bin/colr

graphics() {
	if [[ $(hostname) = "globtop" ]]; then
		xrdb -load ~/.Xresources.laptop
		xrandr --output eDPI --mode 2880x1800 --rate 60
	else	
		nvid
		xrdb -load ~/.Xresources
		xrandr --auto --output HDMI-0 --left-of DVI-I-1 --rate 60 --output DVI-I-1 --rate 144 --mode 1920x1080
	fi
	hsetroot -fill ".wall.jpg"
	xsetroot -cursor_name left_ptr
}

env() {
	cm start
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
	start-pulseaudio-x11
	urxvtd -q -f -o 
}
run() {
	runbar &
	exec bsp
}
graphics
env
run
