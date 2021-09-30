#!/bin/bash

#dconf
pacman -S dconf --noconfirm

#install tilix and tilda
pacman -S tilix --noconfirm
pacman -S tilda --noconfirm

#install git
pacman -S --needed git base-devel --noconfirm

#install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si$ 
cd ..
rm -r yay

#budgie shit
yay -S -Yg budgie-clipboard-applet
yay -S -Yg budgie-screenshot-applet
pacman -S budgie-desktop-view --noconfirm
pacman -S budgie-extras --noconfirm
pacman -S budgie-screensaver --noconfirm

#themes and shit
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh
cd ..
rm -r WhiteSur-gtk-theme.git

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
cd papirus-icon-theme
./install.sh
cd ..
rm -r papirus-icon-theme

#budgie prefs
git clone https://github.com/tylerprattco/budgieprefs.git
cd budgieprefs
dconf load /com/solus-project/ < budgie-backup
cd ..
rm -r budgieprefs

