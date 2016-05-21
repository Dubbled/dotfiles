#!/bin/sh

graphics() {
	if [[ $(hostname) = "globtop" ]]; then
		xrdb -load ~/.Xresources.laptop
		xrandr --output eDPI --mode 2880x1800 --rate 60
	else	
		xrdb -load ~/.Xresources
		xrandr --output DVI-I-1 --mode 1920x1080 --rate 60
		xrandr --output HDMI-1 --mode 1920x1080 --rate 60 --left-of DVI-I-1
		xrandr --output DVI-D-1 --mode 1920x1080 --rate 60 --left-of HDMI-1
	fi
	hsetroot -fill .wall.jpg
	xsetroot -cursor_name left_ptr
}

env() {
	cm start
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
	start-pulseaudio-x11
	urxvtd -q -f -o 
	nvid
}
run() {
	clock &
	loop &
	exec bsp
}
graphics
env
run
#exec xfce4-session
