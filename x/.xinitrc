#!/bin/sh

graphics() {
	xrdb -load ~/.Xresources
	xrandr --output DVI-I-1 --mode 1920x1080 --rate 144
	hsetroot -tile ~/.tile.jpg
}

env() {
	compton -b --vsync opengl --config ~/.config/compton/config
	sxhkd -c ~/.config/sxhkd/sxhkdrc &
}
run() {
	runbar &
	exec openbox
}
graphics
env
run
