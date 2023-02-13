export PATH=$PATH:$HOME/.local/bin

if [ -z "${DISPLAY}" ] && [ $(tty) == /dev/tty1 ]; then
  exec wrappedhl > /dev/null 2>&1
fi
