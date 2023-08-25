append_path() {
  export PATH=$PATH:$1
}

prepend_path() {
  export PATH=$1:$PATH
}

append_path ~/.local/bin/modules/
export QT_QPA_PLATFORMTHEME=qt6ct

# autostart graphical session on tty 1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
 # no exec is used because we don't want to replace the tty shell (to get back to it when doing `pkill x`)
 # xinit
 startx
else
 clear
 exec fish
fi
