#!/bin/sh

graphics() {
	if [[ $(hostname) = "globtop" ]]; then
		xrdb -load ~/.Xresources.laptop
		xrandr --output eDPI --mode 2880x1800 --rate 60
	else	
		xrdb -load ~/.Xresources
		xrandr --output DVI-I-1 --mode 1920x1080 --rate 60
	fi
	hsetroot -tile 'Pictures/Wallpapers/binding_dark.png'
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
