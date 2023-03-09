export PATH=$PATH:$HOME/.local/bin
export LS_COLORS+=':ow=01;33'

if [ -z "${DISPLAY}" ] && [ $(tty) == /dev/tty1 ]; then
  exec wrappedhl > /dev/null 2>&1
fi
