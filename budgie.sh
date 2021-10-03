#!/bin/bash

#yay
cd /home/tyler
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
sudo rm -r yay

#dconf and wget
sudo pacman -S dconf wget --noconfirm

#gdm
sudo pacman -S gdm --noconfirm

#budgie
sudo pacman -S --needed budgie-desktop network-manager-applet gnome-control-center budgie-desktop-view budgie-extras budgie-screensaver gnome-calculator gnome-tweaks firefox --noconfirm

#budgie extra (SU NOTE)
yay -S budgie-clipboard-applet budgie-screenshot-applet --noconfirm

#themes and shit
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
sudo ./install.sh
cd ..
sudo rm -r WhiteSur-gtk-theme

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
cd papirus-icon-theme
sudo ./install.sh
cd ..
sudo rm -r papirus-icon-theme

#budgie prefs
dconf load / < full-backup
cd ..
sudo rm -r budgieprefs

#nautilus and other shit
sudo pacman -S nautilus gthumb gparted btop --noconfirm


#terminal
sudo pacman -S tilix tilda --noconfirm

#enable gdm
sudo systemctl enable gdm
sudo systemctl start gdm
