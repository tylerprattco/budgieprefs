#!/bin/bash

#install yay and git before-hand
yay -Syu --noconfirm

#dconf and wget
pacman -S dconf wget --noconfirm

#gdm
pacman -S gdm --noconfirm

#budgie
pacman -S --needed budgie-desktop network-manager-applet gnome-control-center budgie-desktop-view budgie-extras budgie-screensaver gnome-calculator gnome-tweaks firefox --noconfirm

#budgie extra (SU NOTE)
yay -S budgie-clipboard-applet budgie-screenshot-applet --noconfirm

#themes and shit
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh
cd ..
rm -r WhiteSur-gtk-theme

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

#nautilus and other shit
pacman -S nautilus gthumb gparted 7zip-bin --noconfirm


#terminal
pacman -S tilix tilda --noconfirm

#enable gdm
systemctl enable gdm
