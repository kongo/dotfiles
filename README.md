dotfiles
========

To Do
-----
* installation script
* add my git mergetool to bin
* make findorstart script work with terminal applications

What goes where
---------------
    synapse ~/.config
    tint2 ~/.config
    compton.conf ~/.config
    openbox ~/.config
    docky-2 ~/.gconf/apps
    .gitconfig ~
    bin ~
    .gtkrc-2.0 ~
    .gtkrc-2.0.mine ~
    .themes ~
    .conkyrc ~

.bashrc
-----------------------------------------
    export PS1='\[\e[0;34m\]\w\$\[\e[0m\] '
    alias chrome="google-chrome"
    alias termin="/usr/bin/terminator"

Just a note for findorstart
---------------------------
    wmctrl -lx
    wmctrl -i -a 0x03a00005

