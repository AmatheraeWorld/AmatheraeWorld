#!/bin/bash
# version 1.7 fecha 28/7/2020
greenColour="\e[38;5;82m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
verde="\e[0;32m\033[1m"
blink="\e[5m"
echo 
echo -e "                            .,,,,..                                  " 
echo -e "                      ..,,//*,,..... ......,.                        " 
echo -e "                ,,*,,....(/*/,,,....../,....,,                       " 
echo -e "              ***//*,*...*%##(/***,,,,/,*..../.                      " 
echo -e "             /(*//(/*/(*///(###(///**,(,#******.                     " 
echo -e "             #((((((//##((#%&%&%%#(/%#&&##**(/*.                     " 
echo -e "             %##%%(#((/%&&&&@%#(###/#(/////#(*                       " 
echo -e "              %%##(%%%###(***,,,//,./,,,*//.                         " 
echo -e "                .#%##%%##((/**,*(##(*,,***.                          " 
echo -e "                     /#####((/(#%%&%#*,*.                            " 
echo -e "                           ##(((/(/,,*,                              " 
echo -e "                      *////########(///**#/****/(*                   " 
echo -e "                  *#%*#&&&&(//((#%&&(#,#((/**/*,%&*,/(,.             " 
echo -e "                 (&/,*&%(###////*/*###(#%////*/%/,,.(#/              " 
echo -e "                /##(*/(*,**#/*//*,,,((####%&&((((((&(**/,            " 
echo -e "               .%#%#/,//.,,/*/(//,.,/#%#((###(((&%##&.               " 
echo -e "                .%%%######/%#%%##(##(((((###%%%%&#,,,,.              " 
echo -e "                 ##%%%#%%(###(%%%%%%###/(((,   //**,...,             " 
echo -e "              ./*((##%%%#(##%%%####%#**/#(.     ///**,.  ..          " 
echo -e "           &&,..*/##%%%&#*((#((#(((//*/##*       ////%&%#,#((        " 
echo -e "           /%%*,,(#%&%###(/*,,*/#%###/,**         /&#(%#/*//(#.      " 
echo -e "        ,/**/(*@&&&&@#&%%##(%&%/(((((*%&(&.       /#/**,,,...,       " 
echo -e "       ,*,(####, %&%&&##%&&#&&%#&&&&#&&%((#       .****//*,,,*,,     " 
echo -e "      ./#,//(.  .&#(/(////((&&%///(*.. . .,       ,/,      **,,,..   " 
echo -e "      .*//../.  &&/**/////((&&&/*,..      .        (*.        .*(.   " 
echo -e "               ,&/*,*///*/((&&&/,,..      .,                    ,    "
echo -e "              .&(**,*/****/(&&&/,...       ,                         "
echo -e "             .#&/**,****,*/(&&&/. .        ..                        "
echo -e "             .&//**,,**,,,/(&&&/  .         .                        "
echo -e "             .///**,,**,,,/(&&&*  .           .                      "
echo -e "            .((/*,,,,,,,,*/(&@&*  .      .     .                     "
echo -e "            /@&#(,,,,,,,,*/(%@&*.           ..  .                    "
echo -e "           .&%*(&&%%#*,,.,//&&%/,.. .*,,.*///*#/..                   "
echo -e "            /%%%%(#&&&&&&@@/%@(*&&&&%%###/**.../.                    " 
echo -e "                     ../(##%/(@(&%(#/&%%%%%%%%%/.                    " 
echo -e "                            **    #&&@&&&&&&&&&(,                    " 
echo -e "                                        ....                         "
echo -e "                                                                     "
echo -e "${purpleColour}==================(${endColour}${greenColour} Cromit v1.7 28/7/2020 ${endColour}${purpleColour})==========================${endColour}"
echo 
echo -e " Escoge opcion\n\n "
echo -e "${purpleColour}[1]${endColour}${greenColour} crontab -l${endColour} --> Para ver las tareas programadas "
echo -e "${purpleColour}[2]${endColour}${greenColour} systemctl list-timers${endColour} --> Para ver tareas con temporizadores y cuanto les queda "
echo -e "${purpleColour}[3]${endColour}${greenColour} Procmon${endColour} "
echo -e "${purpleColour}[4]${endColour}${greenColour} Procmon v2${endColour} "
echo -e "${purpleColour}[5]${endColour}${greenColour} Cronmonit${endColour} "
echo -e "${purpleColour}[6]${endColour}${greenColour} tail -f${endColour} ${blueColour}[archivo]${endColour} --> Nos muestra en tiempo real el archivo, por si cambia con un trabajo cron "
echo -e "${purpleColour}[7]${endColour}${greenColour} watch -n 1${endColour} ${blueColour}[comando]${endColour} -->  Para ver cada segundo como cambia un comando que se le pase ${blueColour}[ls -laR]${endColour} para ver si un cron crea o modifica un archivo "
echo -e "${purpleColour}[8]${endColour}${greenColour} watch -n 1 du -hc${endColour} ${blueColour}[archivo]${endColour} --> Para ver como cambia el peso de un archivo cada segundo por si un cron escribe en un archivo"
echo -e "${purpleColour}[9]${endColour}${greenColour} ltrace${endColour}${blueColour} [programa]${endColour} --> Para ver las llamadas que hace un programa, se usa en reversing ${redColour}[requiere ltrace instalado en la maquina]${endColour}"
echo -e "${purpleColour}[10]${endColour}${greenColour} tree${endColour} --> Para ver en formato arbol si una tarea cron crea o elimina un archivo ${redColour}[requiere tree instalado en la maquina]${endColour}"
echo -e "${purpleColour}[11]${endColour}${greenColour} find \-name *conf*${endColour} --> Busca en el directorio en el que se esta todos los archivos de configuracion "
echo -e "${purpleColour}[12]${endColour}${greenColour} find \-name *back*${endColour} --> Busca en el directorio en el que se esta todos los archivos de backup "
echo -e "${purpleColour}[13]${endColour}${greenColour} find \-user${endColour} ${blueColour}[usuario]${endColour} ${greenColour}2>/dev/null${endColour} --> Ver recursos de los que el usuario es propietario y elimina los errores "
echo -e "${purpleColour}[14]${endColour}${greenColour} find \-perm -u=s 2>/dev/null${endColour} --> Busca archivos SUID que se ejecutan con permisos de propietario ${blueColour}[Normalmente root]${endColour}"
echo -e "${purpleColour}[15]${endColour}${greenColour} SUID${endColour} y ${greenColour}SUDOS${endColour} reconocidos para hacer priv esc  "
echo -e "${purpleColour}[16]${endColour} Puertos internos abiertos ${greenColour}proc/net/tcp${endColour} "
echo -e "${purpleColour}[17]${endColour} Grupos en los que estamos ${greenColour}[ID]${endColour} --> Nos da el ID del grupo en el que esta el usuario que estamos usando"
echo -e "${purpleColour}[18]${endColour} Tipo de archivo ${greenColour}file${endColour} ${blueColour}[archivo]${endColour} --> Nos dice de que tipo es un archivo o fichero "
echo -e "${purpleColour}[19]${endColour}${greenColour} w${endColour} --> Para ver que usuarios estan conectados ahora mismo al sistema  \n"
echo -e "${purpleColour}[777]${endColour}${greenColour} Chronormu${endColour} --> Un voy a tener suerte con la escalada de privilegios Alle voy!  \n"

#if [ $1 -le "13" ]; then  #-le para menor o igual
# opcion=$1 # seleccionamos por variable, no podemos dejar espacio
#else   
   read -r opcion
#   1=$2 # asignamos el valor de la 2 variable en la primera para los casos case

#fi
echo ""

case "$opcion" in
	1) crontab -l
	;;
	2) watch -n 1 'systemctl list-timers' 
	;;
	3) old_process=$(ps -eo command)
	
		while true; do
			new_process=$(ps -eo command)
			diff <(echo "$old_process") <(echo "$new_process") | grep "[\>|<]" | grep -v -E -i "command|Cromit"
			old_process=$new_process
		done
	;; 
	4) IFS=$'\n'
	   old_process=$(ps -eo command)
	
       while true; do
	   new_process=$(ps -eo command)
	   diff <(echo "$old_process") <(echo "$new_process")
	   sleep 1
	   old_process=$new_process
       done
	;;
	5) IFS=$'\n'
	
       old_process=$(ps aux --forest | grep -v "ps aux --forest" | grep -v "sleep 1" | grep -v $0)
	
	   while true; do
	   new_process=$(ps aux --forest | grep -v "ps aux --forest" | grep -v "sleep 1" | grep -v $0)
	   diff <(echo "$old_process") <(echo "$new_process") | grep [\<\>]
	   sleep 1
	   old_process=$new_process
	   done
	;;
	6) if [ $# -ne 1 ]; then
	     echo -e "Introduce archivo \n"
	     read -r archivo
	     tail -f $archivo
	   else
	     tail -f $1 # 1 es el primer parametro que le pasamos
	   fi
	;;	
	7) if [ $# -ne 1 ]; then
		 echo -e "Introduce comando \n"
		 read -r comando
		 watch -n 1 $comando
	   else
		 watch -n 1 $1 # 1 es el primer parametro que le pasamos
	   fi
	;;
	8) if [ $# -ne 1 ]; then
	     echo -e "Introduce archivo \n"
		 read -r archivo
		 watch -n 1 du -hc $archivo
	   else
	     watch -n 1 du -hc $1 # 1 es el primer parametro que le pasamos
	   fi

	;;
	9) if [ $# -ne 1 ]; then
	 	 echo -e "Introduce archivo \n"
	 	 read -r archivo
	 	 ltrace $archivo
	   else
	 	 ltrace $1 # 1 es el primer parametro que le pasamos
	   fi
	 	
	;;
	10) if [ $# -ne 1 ]; then 

		 	old_tree=$(tree ./ -a)
		 	tree -a
		 	while true; do
		 	new_tree=$(tree ./ -a)
		 	diff <(echo "$old_tree") <(echo "$new_tree") | grep [\<\>]
		 	old_tree=$new_tree
		 	done
	    else
	     	old_tree=$(tree $1 -a)
		 	while true; do
			new_tree=$(tree $1 -a)
			diff <(echo "$old_tree") <(echo "$new_tree") | grep [\<\>]
			old_tree=$new_tree
			done	
		fi
	;;
	11) if [ $# -ne 1 ]; then
		 find \-name "*conf*"
		 echo -e "\n ¿Quieres buscar usuarios y contraseñas en los archivos de configuracion? [S/N] \n"
		 read fichero
		 	if [ $fichero == "S" ]; then
		 		echo
		 		find ./ -type f -name "*conf*" -exec grep -riE "user|usuario|pass|contraseña|root|admin|creden" {} + 
		 	fi
		 echo -e "\n ¿Quieres buscar usuarios y contraseñas en todos los archivos? [S/N] \n"
		 read fichero
		 		 	if [ $fichero == "S" ]; then
						echo
		 		 		find ./ -name "*conf*" | grep -R -i -E "user|usuario|pass|contraseña|root|admin|creden" ./ 
		 		 	fi
	    else
		    find $1 -name "*conf*" # la ruta que le pasamos
		    echo -e "\n ¿Quieres buscar usuarios y contraseñas en los archivos de configuracion? [S/N] \n"
		    read fichero
		       if [ $fichero == "S" ]; then
				    echo
		 		    find $1 -type f -name "*conf*" -exec grep -riE "user|usuario|pass|contraseña|root|admin|creden" {} + 
		 	   fi
		    echo -e "\n ¿Quieres buscar usuarios y contraseñas en todos los archivos? [S/N] \n"
		    read fichero
		 	   if [ $fichero == "S" ]; then
		 	 		echo
		      	    find $1 -name "*conf*" | grep -R -i -E "user|usuario|pass|contraseña|root|admin|creden" $1
		 	   fi
	   fi
	;;
	12) if [ $# -ne 1 ]; then
			 find \-name "*back*"
			 echo -e "\n ¿Quieres buscar usuarios y contraseñas en los archivos de backup? [S/N] \n"
			 read fichero
			 	if [ $fichero == "S" ]; then
					echo
			 		find ./ -type f -name "*back*" -exec grep -riE "user|usuario|pass|contraseña|root|admin|creden" {} + 
			 	fi
			 echo -e "\n ¿Quieres buscar usuarios y contraseñas en todos los archivos? [S/N] \n"
			 read fichero
			    if [ $fichero == "S" ]; then
					echo
			 		find ./ -name "*back*" | grep -R -i -E "user|usuario|pass|contraseña|root|admin|creden" ./ 
			 	fi
		else
			 find $1 -name "*back*" # la ruta que le pasamos
			 echo -e "\n ¿Quieres buscar usuarios y contraseñas en los archivos de backup? [S/N] \n"
			 read fichero
			 	if [ $fichero == "S" ]; then
					echo
			 		find $1 -type f -name "*back*" -exec grep -riE "user|usuario|pass|contraseña|root|admin|creden" {} + 
			 	fi
			 echo -e "\n ¿Quieres buscar usuarios y contraseñas en todos los archivos? [S/N] \n"
			 read fichero
			 	if [ $fichero == "S" ]; then
			 		echo
			      	find $1 -name "*back*" | grep -R -i -E "user|usuario|pass|contraseña|root|admin|creden" $1
			 	fi
       fi
	;;
	13) if [ $# -ne 1 ]; then
		 echo -e "Introduce usuario \n"
		 read -r usuario
		 find \-user $usuario 2>/dev/null
		 echo -e "\n ¿Quieres buscar en la raiz? [S/N] \n"
		 read raiz
		 	if [ $raiz == "S" ]; then
				find / -user $usuario 2>/dev/null
		 	fi
	    else
		 find \-user $1 2>/dev/null
		 echo -e "\n ¿Quieres buscar en la raiz? [S/N] \n"
		 read raiz
		 	if [ $raiz == "S" ]; then
		 		find / -user $1 2>/dev/null
		    fi
        fi
	 ;;
	 14) if [ $# -ne 1 ]; then
	 	  echo -e "\n Buscando por: find \-perm -u=s | xargs ls -la  ([*] Funciona si no hay espacios) \n"
	 	  find \-perm -u=s 2>/dev/null | xargs ls -la
	 	  echo -e "\n Buscando por: find ./ -perm -u=s -exec ls -la {} +   \n"
	 	  find ./ -perm -u=s -exec ls -la {} + 
	 	  echo -e "\n ¿Quieres buscar en la raiz? [S/N] \n"
		  read raiz
		 	 if [ $raiz == "S" ]; then
		 	    echo -e "\n Buscando por: find / -perm -u=s | xargs ls -la  \n"
				find / -perm -u=s 2>/dev/null | xargs ls -la 
				echo -e "\n Buscando por: find / -perm -u=s -exec ls -la {} +   \n"
			    find / -perm -u=s -exec ls -la {} + 
		 	 fi
	 	 else
	 	  echo -e "\n Buscando por: find" $1 "-perm -u=s | xargs ls -la ([*] Funciona si no hay espacios) \n"
	 	  find $1 -perm -u=s 2>/dev/null | xargs ls -la  # para hacerlo desde la Raiz poner /
	 	  echo -e "\n Buscando por: find" $1 "-perm -u=s -exec ls -la {} +   \n"
	 	  find $1 -perm -u=s -exec ls -la {} + 
          echo -e "\n ¿Quieres buscar en la raiz? [S/N] \n"
		  read raiz
		 	 if [ $raiz == "S" ]; then
				echo -e "\n Buscando por: find / -perm -u=s | xargs ls -la  \n"
				find / -perm -u=s 2>/dev/null | xargs ls -la 
				echo -e "\n Buscando por: find / -perm -u=s -exec ls -la {} +   \n"
				find / -perm -u=s -exec ls -la {} + 
		 	 fi
	 	 fi
	 ;;
	 15) echo -e "SUID"
	 	 find / -perm -u=s -type f 2>/dev/null | grep -E "/aria2c|/arp|/ash|/base32|/base64|/bash|/busybox|/cat|/chmod|/chown|/chroot|/cp|/csh|/curl|/cut|/dash|/date|/dd|/dialog|/diff|/dmsetup|/docker|/emacs|/env|/eqn|/expand|/expect|/file|/find|/flock|/fmt|/fold|/gdb|/gimp|/grep|/gtester|/hd|/head|/hexdump|/highlight|/iconv|/ionice|/ip|/jjs|/jq|/jrunscript|/ksh|/ksshell|/ld.so|/less|/logsave|/look|/lwp-download|/lwp-request|/make|/more|/mv|/nano|/nice|/nl|/node|/nohup|/od|/openssl|/perl|/pg|/php|/pico|/python|/readelf|/restic|/rlwrap|/rpm|/rpmquery|/rsync|/run-parts|/rvim|/sed|/setarch|/shuf|/soelim|/sort|/start-stop-daemon|/stdbuf|/strace|/strings|/sysctl|/systemctl|/tac|/tail|/taskset|/tclsh|/tee|/tftp|/time|/timeout|/ul|/unexpand|/uniq|/unshare|/uudecode|/uuencode|/vim|/watch|/wget|/xargs|/xxd|/xz|/zsh|/zsoelim"
		 echo
    	 echo -e "SUDO"
   	     sudo -l 2>/dev/null | grep -E "ALL|/apt-get|/apt|/aria2c|/arp|/ash|/awk|/base32|/base64|/bash|/bpftrace|/bundler|/busctl|/busybox|/byebug|/cat|/chmod|/chown|/chroot|/cobc|/cp|/cpan|/cpulimit|/crash|/crontab|/csh|/curl|/cut|/dash|/date|/dd|/dialog|/diff|/dmesg|/dmsetup|/dnf|/docker|/dpkg|/easy_install|/eb|/ed|/emacs|/env|/eqn|/expand|/expect|/facter|/file|/find|/flock|/fmt|/fold|/ftp|/gawk|/gcc|/gdb|/gem|/genisoimage|/gimp|/git|/grep|/gtester|/hd|/head|/hexdump|/highlight|/iconv|/iftop|/ionice|/ip|/irb|/jjs|/journalctl|/jq|/jrunscript|/ksh|/ksshell|/ld.so|/ldconfig|/less|/logsave|/look|/ltrace|/lua|/lwp-download|/lwp-request|/mail|/make|/man|/mawk|/more|/mount|/mtr|/mv|/mysql|/nano|/nawk|/nc|/nice|/nl|/nmap|/node|/nohup|/nroff|/nsenter|/od|/openssl|/pdb|/perl|/pg|/php|/pic|/pico|/pip|/pkexec|/pry|/puppet|/python|/rake|/readelf|/red|/redcarpet|/restic|/rlwrap|/rpm|/rpmquery|/rsync|/ruby|/run-mailcap|/run-parts|/rvim|/scp|/screen|/script|/sed|/service|/setarch|/sftp|/shuf|/smbclient|/socat|/soelim|/sort|/sqlite3|/ssh|/start-stop-daemon|/stdbuf|/strace|/strings|/su|/sysctl|/systemctl|/tac|/tail|/tar|/taskset|/tclsh|/tcpdump|/tee|/telnet|/tftp|/time|/timeout|/tmux|/top|/ul|/unexpand|/uniq|/unshare|/uudecode|/uuencode|/valgrind|/vi|/vim|/watch|/wget|/wish|/xargs|/xxd|/xz|/yum|/zip|/zsh|/zsoelim|/zypper"
		  	 
	 ;;
	 16) cat /proc/net/tcp | awk '{print $2}' | grep -v local | tr ': ' ' ' | awk 'NF{print $NF}'
	 	 echo
	 	 for hexadecimal in $(cat /proc/net/tcp | awk '{print $2}' | grep -v local | tr ': ' ' ' | awk 'NF{print $NF}'); do
	 	 printf "El puerto $hexadecimal es el puerto: %d \n" $((16#$hexadecimal))
	 	 done;
	 ;;
	 17) id
	 ;;
	 18) if [ $# -ne 1 ]; then
	 	 	 echo -e "Introduce archivo \n"
	 	 	 read -r archivo
	 	 	 file $archivo
	 	 else
	 	 	 file $1 # 1 es el primer parametro que le pasamos
	 	 fi
	 ;;
	 19) watch -n 1 'w'
	 ;;
	 777) 
	 	  
	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} ¿Elevacion de privilegios por grupo? ${endColour}${purpleColour})==========================${endColour}"
	 	  id 2>/dev/null | grep -E "docker|root|lxd"
	 	  if [ $? == 0 ]; then
	 	  	 grupos=$(id 2>/dev/null | grep -E "docker|root|lxd")
	 	  	 if [[ "$grupos" == *"root"* ]]; then
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Grupo vulnerable ${yellowColour}root ${endColour}"
	 	   	 elif [[ "$grupos" == *"docker"* ]]; then
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Grupo vulnerable ${yellowColour}docker ${endColour}"
	 	  	 elif [[ "$grupos" == *"lxd"* ]]; then
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Grupo vulnerable ${yellowColour}lxd ${endColour}"
	 	  	 fi
	 	  	
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Buscar escalada de privilegios con los grupos mostrados" 
	 	  else
	 	  	 echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi
	 	  
	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} ¿Elevacion de privilegios por SUID? ${endColour}${purpleColour})===========================${endColour}"
	 	  find / -perm -u=s -type f 2>/dev/null | grep -E "/aria2c|/arp|/ash|/base32|/base64|/bash|/busybox|/cat|/chmod|/chown|/chroot|/cp|/csh|/curl|/cut|/dash|/date|/dd|/dialog|/diff|/dmsetup|/docker|/emacs|/env|/eqn|/expand|/expect|/file|/find|/flock|/fmt|/fold|/gdb|/gimp|/grep|/gtester|/hd|/head|/hexdump|/highlight|/iconv|/ionice|/ip|/jjs|/jq|/jrunscript|/ksh|/ksshell|/ld.so|/less|/logsave|/look|/lwp-download|/lwp-request|/make|/more|/mv|/nano|/nice|/nl|/node|/nohup|/od|/openssl|/perl|/pg|/php|/pico|/python|/readelf|/restic|/rlwrap|/rpm|/rpmquery|/rsync|/run-parts|/rvim|/sed|/setarch|/shuf|/soelim|/sort|/start-stop-daemon|/stdbuf|/strace|/strings|/sysctl|/systemctl|/tac|/tail|/taskset|/tclsh|/tee|/tftp|/time|/timeout|/ul|/unexpand|/uniq|/unshare|/uudecode|/uuencode|/vim|/watch|/wget|/xargs|/xxd|/xz|/zsh|/zsoelim"
	 	  if [ $? == 0 ]; then
	 	  	 suid=$(find / -perm -u=s -type f 2>/dev/null | grep -E "/aria2c|/arp|/ash|/base32|/base64|/bash|/busybox|/cat|/chmod|/chown|/chroot|/cp|/csh|/curl|/cut|/dash|/date|/dd|/dialog|/diff|/dmsetup|/docker|/emacs|/env|/eqn|/expand|/expect|/file|/find|/flock|/fmt|/fold|/gdb|/gimp|/grep|/gtester|/hd|/head|/hexdump|/highlight|/iconv|/ionice|/ip|/jjs|/jq|/jrunscript|/ksh|/ksshell|/ld.so|/less|/logsave|/look|/lwp-download|/lwp-request|/make|/more|/mv|/nano|/nice|/nl|/node|/nohup|/od|/openssl|/perl|/pg|/php|/pico|/python|/readelf|/restic|/rlwrap|/rpm|/rpmquery|/rsync|/run-parts|/rvim|/sed|/setarch|/shuf|/soelim|/sort|/start-stop-daemon|/stdbuf|/strace|/strings|/sysctl|/systemctl|/tac|/tail|/taskset|/tclsh|/tee|/tftp|/time|/timeout|/ul|/unexpand|/uniq|/unshare|/uudecode|/uuencode|/vim|/watch|/wget|/xargs|/xxd|/xz|/zsh|/zsoelim" | awk -F/ '{print $NF}')
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Buscar escalada de privilegios por los binarios mostrados ${yellowColour}https://gtfobins.github.io/gtfobins/$suid/#suid${endColour}" 
	 	  else
	 	   	 echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi
	 	  
	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} ¿Elevacion de privilegios por SUDO? ${endColour}${purpleColour})===========================${endColour}"
	 	  sudo -l 2>/dev/null | grep -E "ALL|/apt-get|/apt|/aria2c|/arp|/ash|/awk|/base32|/base64|/bash|/bpftrace|/bundler|/busctl|/busybox|/byebug|/cat|/chmod|/chown|/chroot|/cobc|/cp|/cpan|/cpulimit|/crash|/crontab|/csh|/curl|/cut|/dash|/date|/dd|/dialog|/diff|/dmesg|/dmsetup|/dnf|/docker|/dpkg|/easy_install|/eb|/ed|/emacs|/env|/eqn|/expand|/expect|/facter|/file|/find|/flock|/fmt|/fold|/ftp|/gawk|/gcc|/gdb|/gem|/genisoimage|/gimp|/git|/grep|/gtester|/hd|/head|/hexdump|/highlight|/iconv|/iftop|/ionice|/ip|/irb|/jjs|/journalctl|/jq|/jrunscript|/ksh|/ksshell|/ld.so|/ldconfig|/less|/logsave|/look|/ltrace|/lua|/lwp-download|/lwp-request|/mail|/make|/man|/mawk|/more|/mount|/mtr|/mv|/mysql|/nano|/nawk|/nc|/nice|/nl|/nmap|/node|/nohup|/nroff|/nsenter|/od|/openssl|/pdb|/perl|/pg|/php|/pic|/pico|/pip|/pkexec|/pry|/puppet|/python|/rake|/readelf|/red|/redcarpet|/restic|/rlwrap|/rpm|/rpmquery|/rsync|/ruby|/run-mailcap|/run-parts|/rvim|/scp|/screen|/script|/sed|/service|/setarch|/sftp|/shuf|/smbclient|/socat|/soelim|/sort|/sqlite3|/ssh|/start-stop-daemon|/stdbuf|/strace|/strings|/su|/sysctl|/systemctl|/tac|/tail|/tar|/taskset|/tclsh|/tcpdump|/tee|/telnet|/tftp|/time|/timeout|/tmux|/top|/ul|/unexpand|/uniq|/unshare|/uudecode|/uuencode|/valgrind|/vi|/vim|/watch|/wget|/wish|/xargs|/xxd|/xz|/yum|/zip|/zsh|/zsoelim|/zypper"
	 	  if [ $? == 0 ]; then
			 sud0=$(sudo -l 2>/dev/null |grep -E "ALL|/apt-get|/apt|/aria2c|/arp|/ash|/awk|/base32|/base64|/bash|/bpftrace|/bundler|/busctl|/busybox|/byebug|/cat|/chmod|/chown|/chroot|/cobc|/cp|/cpan|/cpulimit|/crash|/crontab|/csh|/curl|/cut|/dash|/date|/dd|/dialog|/diff|/dmesg|/dmsetup|/dnf|/docker|/dpkg|/easy_install|/eb|/ed|/emacs|/env|/eqn|/expand|/expect|/facter|/file|/find|/flock|/fmt|/fold|/ftp|/gawk|/gcc|/gdb|/gem|/genisoimage|/gimp|/git|/grep|/gtester|/hd|/head|/hexdump|/highlight|/iconv|/iftop|/ionice|/ip|/irb|/jjs|/journalctl|/jq|/jrunscript|/ksh|/ksshell|/ld.so|/ldconfig|/less|/logsave|/look|/ltrace|/lua|/lwp-download|/lwp-request|/mail|/make|/man|/mawk|/more|/mount|/mtr|/mv|/mysql|/nano|/nawk|/nc|/nice|/nl|/nmap|/node|/nohup|/nroff|/nsenter|/od|/openssl|/pdb|/perl|/pg|/php|/pic|/pico|/pip|/pkexec|/pry|/puppet|/python|/rake|/readelf|/red|/redcarpet|/restic|/rlwrap|/rpm|/rpmquery|/rsync|/ruby|/run-mailcap|/run-parts|/rvim|/scp|/screen|/script|/sed|/service|/setarch|/sftp|/shuf|/smbclient|/socat|/soelim|/sort|/sqlite3|/ssh|/start-stop-daemon|/stdbuf|/strace|/strings|/su|/sysctl|/systemctl|/tac|/tail|/tar|/taskset|/tclsh|/tcpdump|/tee|/telnet|/tftp|/time|/timeout|/tmux|/top|/ul|/unexpand|/uniq|/unshare|/uudecode|/uuencode|/valgrind|/vi|/vim|/watch|/wget|/wish|/xargs|/xxd|/xz|/yum|/zip|/zsh|/zsoelim|/zypper" | awk -F/ '{print $NF}')
	 	     echo -e "${greenColour}${blink}[+]${endColour} Buscar escalada de privilegios por sudo ${yellowColour}https://gtfobins.github.io/gtfobins/$sud0/#sudo${endColour}"  
	 	  else
	 	  	 echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi

		  echo -e "${purpleColour}====================(${endColour}${greenColour} Crons ${endColour}${purpleColour})=========================================================${endColour}"
			 crontab -l
			 echo -e
			 systemctl list-timers
			 echo -e
	 	  	 echo -e "Se recomienda el uso de pspy linux para ver si hay alguna tarea o proceso Cron que se este ejecutando sin necesidad de persmisos de root ${yellowColour}https://github.com/DominicBreuker/pspy/releases${endColour}"

			 echo -e "${purpleColour}====================(${endColour}${greenColour} Usuarios y Contraseñas en los archivos de Configuracion ${endColour}${purpleColour})=======${endColour}"
			 find ./ -type f -name "*conf*" -exec grep -riE "user|usuario|pass|contraseña|root|admin|creden" {} + 
	 	  	 echo -e
	 	  	 echo -e "${yellowColour}Para una opcion mas completa ejecute la opcion 11 nivel 3 de intensidad${endColour}"

			 echo -e "${purpleColour}====================(${endColour}${greenColour} Usuarios y Contraseñas en los archivos de Backup ${endColour}${purpleColour})==============${endColour}"
			 find ./ -type f -name "*back*" -exec grep -riE "user|usuario|pass|contraseña|root|admin|creden" {} + 
	 	  	 echo -e
	 	  	 echo -e "${yellowColour}Para una opcion mas completa ejecute la opcion 12 nivel 3 de intensidad${endColour}"
	 	  	 
	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} ¿Estamos en un Docker? ${endColour}${purpleColour})========================================${endColour}"
	 	  ls -a /.dockerenv 2>/dev/null
	 	  if [ $? == 0 ]; then
	 	   	 echo -e "${greenColour}${blink}[+]${endColour} SI "
	 	   	 echo -e "${greenColour}${blink}[+]${endColour} Usar --> ${yellowColour}docker run -v /:/mnt/ -i -t nombre_contenedor bash ${endColour} --> crea una montura del directorio raiz sobre un contenedor --> ${yellowColour}cd/mnt/root${endColour} para acceder"
	 	  else
	 	     echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi

          echo -e "${purpleColour}====================(${endColour}${greenColour} Escritura en Passwd ${endColour}${purpleColour})===========================================${endColour}"
	 	  find /etc/passwd -writable | xargs ls -l
	 	  if [ $? == 0 ]; then
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} SI "
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} ${yellowColour}openssl passwd [contraseña]${endColour} se puede sustituir ${redColour}root:x:0${endColour} sustituir la x por el hash y despues al hacer [su root] y poner la contraseña"
	 	  else
	 	  	 echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi

	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} Attr_user ${endColour}${purpleColour})=====================================================${endColour}"
	 	  find /etc/attr_user 2>/dev/null
	 	  if [ $? == 0 ]; then
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} SI "
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Comprobar en cat /etc/user_attr ${yellorColour}pfexec bash${endColour} Como un root sin contraseña un sudo con roles"
	 	  else
	 	  	 echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi
	 	  
	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} ¿Chkrootkit? ${endColour}${purpleColour})==================================================${endColour}"
	 	  find / -type d -name "report" 2>/dev/null
	 	  if [ $? == 0 ]; then
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} SI "
	 	  	 echo -e "${greenColour}${blink}[+]${endColour} Si hay una carpeta report es muy ${yellowColour}posible que se encuentre chkrootkit instalado${endColour} y si se encuentra en la version ${redColour}< 0.50${endColour} es vulnerable a priv esc ${yellowColour}Crear un archivo en /tmp llamado update y se ejecutara con root ${endColour}"
	 	  else
	 	  	 echo -e "${redColour}${blink}[-]${endColour} NO"
	 	  fi

	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} Puertos Internos Abiertos ${endColour}${purpleColour})=====================================${endColour}"
	 	  cat /proc/net/tcp | awk '{print $2}' | grep -v local | tr ': ' ' ' | awk 'NF{print $NF}'
	 	  echo
	 	  for hexadecimal in $(cat /proc/net/tcp | awk '{print $2}' | grep -v local | tr ': ' ' ' | awk 'NF{print $NF}'); do
	 	  printf "El puerto $hexadecimal es el puerto: ${yellowColour}%d${endColour} \n" $((16#$hexadecimal))
	 	  done;

	 	  echo -e "${purpleColour}====================(${endColour}${greenColour} Segmentos de RED Disponibles ${endColour}${purpleColour})==================================${endColour}"
	 	  cat /proc/net/fib_trie | grep -B1 "32 host LOCAL"
	 	  
	 ;;
	 *) echo -e "${redColour}[*] Uso de Cromit: ./Cromit.sh [Opcional] <archivo/recurso/directorio> {ENTER} Despues elegir opcion del menu \n ${endColour}"
	 ;;		  
esac

