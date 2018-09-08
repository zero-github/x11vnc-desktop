emulate sh
. /etc/profile
emulate zsh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" -a -z "$(echo $PATH | grep $HOME/bin)" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" -a -z "$(echo $PATH | grep $HOME/.local/bin)" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
