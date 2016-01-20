#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	hsetroot -tile .wallpaper.jpg
	xset +fp ~/.fonts
}

env() {
	compton --config ~/.config/compton/config -b
	rmdesk &
	sxhkd &
	runbar &
}
run() {
	bspwm &
	exec startxfce4
}
graphics
env
run
