dotfiles
========

To Do
-----
- ✓ add my git mergetool to bin
- ✓ make findorstart script work with terminal applications
- ✓ installation script
-   extract bash aliases and settings to a separate file

Installation
------------
    rake install
It takes list of files and locations from the next section of the readme file, renames destination `file to `file.bak`, if it already exists, and creates symlink to the corresponding file in the repo. Hence, all configs are kept inplace.

What goes where
---------------
    synapse           ~/.config
    tint2             ~/.config
    compton.conf      ~/.config
    openbox           ~/.config
    docky-2           ~/.gconf/apps
    .gitconfig        ~
    bin               ~
    .gtkrc-2.0        ~
    .gtkrc-2.0.mine   ~
    .themes           ~
    .conkyrc          ~
    .xxkbrc           ~

.bashrc
-----------------------------------------
    export PS1='\[\e[0;34m\]\w\$\[\e[0m\] '

