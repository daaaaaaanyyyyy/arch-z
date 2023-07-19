#!/bin/bash

fonts_dir="$HOME/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

cd
cd arch-z/fonts
tar xzvf Hack-NerdFont.tar.gz
unzip JetBrainsMono.zip
mv *ttf ~/.local/share/fonts
cd Hack-NerdFont/
mv *ttf ~/.local/share/fonts
cd ..

fc-cache -fv


sudo pacman -S --noconfirm ttf-font-awesome ttf-dejavu ttf-liberation noto-fonts noto-fonts-emoji ttf-fira-code ttf-ubuntu-font-family

yay -S --noconfirm ttf-arabeyes-fonts ttf-ubuntu-arabic
