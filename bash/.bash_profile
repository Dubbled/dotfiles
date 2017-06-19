export BSPWM_STATE=/tmp/bspwm-state.json
export EDITOR=nvim
eval "$(ssh-agent -s)"
export GOPATH=$HOME/Go

source ~/.profile

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
