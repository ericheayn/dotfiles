# /etc/zsh/zshenv:
# export ZDOTDIR="$HOME/.config/zsh"

if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
    exec sway >"$HOME/.local/state/sway.log" 2>&1
fi

