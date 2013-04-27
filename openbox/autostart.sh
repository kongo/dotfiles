(sleep 2s && tint2) &
setxkbmap -layout us,ru -variant -option grp:caps_toggle,grp_led:caps,terminate:ctrl_alt_bksp &

# Make GTK apps look and behave how they were set up in the gnome config tools
if test -x /usr/libexec/gnome-settings-daemon >/dev/null; then
  /usr/libexec/gnome-settings-daemon &
elif which gnome-settings-daemon >/dev/null; then
  gnome-settings-daemon &
# Make GTK apps look and behave how they were set up in the XFCE config tools
elif which xfce-mcs-manager >/dev/null; then
  xfce-mcs-manager n &
fi

# Preload stuff for KDE apps
if which start_kdeinit >/dev/null; then
  LD_BIND_NOW=true start_kdeinit --new-startup +kcminit_startup &
fi

gnome-sound-applet &

synapse &

# nitrogen --restore &

(sleep 3s && compton) &


# docky &

xxkb &

(sleep 3s && conky) &
