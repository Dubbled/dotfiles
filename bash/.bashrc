alias mpv="mpv -vo=opengl-hq:interpolation:blend-subtitles -video-sync=display-resample -hwdec=no"
alias ls="ls --color"
if [[ $HOSTNAME != "globbox" ]]; then
	alias ncmpcpp="ncmpcpp -h globbox"
fi
