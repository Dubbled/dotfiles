#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	hsetroot -fill .wallpaper.jpg
	xset +fp ~/.fonts
}

env() {
	compton --config ~/.config/compton/config -b
	sxhkd &
	bar &
}
run() {
	exec bspwm
}
graphics
env
run
