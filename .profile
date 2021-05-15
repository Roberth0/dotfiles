
#[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="nvim"
export PATH=$HOME/Downloads/omnetpp-5.6.2/bin:$PATH

#if [ "$(tty)" = "dev/tty1" ]; then
#  exec startx 1> /dev/null
#fi

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
