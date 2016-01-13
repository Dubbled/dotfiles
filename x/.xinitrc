#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	hsetroot -tile .wallpaper.png
	xset +fp ~/.fonts
}

env() {
	compton --config ~/.config/compton/config -b
	rmdesk &
	sxhkd &
	bar &
}
run() {
	bspwm &
	exec startxfce4
}
graphics
env
run
