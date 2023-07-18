#!/bin/bash

# color
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# args
requiments=$1

# hi
name=$(whoami)
echo "${green}Hello $name!${reset}"

OK() {
	echo -e "${green}--- $1 OK ---${reset}"
}

FAIL() {
	echo -e "${red}--- $1 FAILS ---${reset}"
}

INSTALL() {
	${1} && OK $2 || FAIL $2
}

UPDATE() {
	sudo apt update && sudo apt upgrade
}

UTILS() {
	sudo apt install aircrack-ng alsa-utils acpi arandr ark atop audacity bashtop bastet blueman bluemon brightnessctl calcurse cmake cmatrix cmus compton conky conky-all cowsay cpu-x dieharder dino-im duf exa flameshot fonts-font-awesome geoclue-2.0 ghc git gnuplot-x11 gparted gpg gpp greed guile-3.0 gxkb hardinfo hexedit htop i3-wm inxi keepassxc krita libreoffice lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings light lolcat make mc ncdu neofetch net-tools ninvaders nitrogen nmap notify-osd obs-studio okular openttd pavucontrol pulseaudio python3-pip qbittorrent quakespasm ranger redshift rofi safeeyes screenfetch sensors-applet shc shotwell speedtest-cli stress suckless-tools taskwarrior thinkfan tmux tty-clock viewnior vim vlc wireshark xfce4-terminal xscreensaver
}

GIT() {

}

# COPY() {

# }

PYTHON() {
	sudo apt install python3.10 python3-pip python3-pyqt5 pyqt5-dev-tools qttools5-dev-tools 
}

# install
INSTALL "UPDATE" "UPDATE"
INSTALL "UTILS" "UTILS"
INSTALL "PYTHON" "PYTHON"
