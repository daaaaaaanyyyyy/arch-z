#!/bin/bash

sudo su <<EOF
mkdir -p ~/.local/share/file-manager/actions/
touch ~/.local/share/file-manager/actions/terminal.desktop
echo "[Desktop Entry]
Type=Action
Tooltip=Open Terminal
Name=Open Terminal
Profiles=profile-one;
Icon=utilities-terminal

[X-Action-Profile profile-one]
MimeTypes=inode/directory;
Exec=kitty --working-directory %f
Name=Default profile" > ~/.local/share/file-manager/actions/terminal.desktop
exit
EOF
