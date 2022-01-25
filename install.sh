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

# install
sudo apt update &&
	echo -e "${green}=== Update OK ===${reset}" ||
	echo -e "${red}=== Update FAILS ===${reset}"

sudo apt upgrade &&
	echo -e "${green}=== Upgrade OK ===${reset}" ||
	echo -e "${red}=== Upgrade FAILS ===${reset}"

sudo apt -y install python3.8 &&
	echo -e "${green}=== Python OK ===${reset}" ||
	echo -e "${red}=== Python FAILS ===${reset}"

pip3 install -r $requiments &&
	echo -e "${green}=== Requiments OK ===${reset}" ||
	echo -e "${red}=== Requiments FAILS ===${reset}"

sudo curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh &&
	echo -e "${green}=== Rust OK ===${reset}" ||
	echo -e "${red}=== Rust FAILS ===${reset}"

sudo apt -y install guile-3.0 &&
	echo -e "${green}=== Lisp OK ===${reset}" ||
	echo -e "${red}=== Lisp FAILS ===${reset}"

sudo apt -y install ghc &&
	echo -e "${green}=== Haskell OK ===${reset}" ||
	echo -e "${red}=== Haskell FAILS ===${reset}"