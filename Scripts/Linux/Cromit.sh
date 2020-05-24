#!/bin/bash

echo -e " Escoge opcion\n\n "
echo "[1] crontab -l --> para ver las tareas programadas "
echo "[2] systemctl list-timers --> para ver tareas con temporizadores y cuanto les queda "
echo "[3] Procmon "
echo "[4] Procmon v2 "
echo "[5] Cronmonit "
echo "[6] tail -f [archivo] --> nos muestra en tiempo real el archivo, por si cambia con un trabajo cron "
echo "[7] watch -n 1 ls -l [Comando] -->  para ver cada segundo como cambia un comando que se le pase "
echo "[8] watch -n 1 du -hc [archivo] --> para ver como cambia el peso de un archivo cada segundo "
echo "[9] ltrace [programa] --> para ver las llamadas que hace un programa, se usa en reversing "
echo "[10] find \-name *config* --> Busca en el directorio en el que se esta todos los archivos de configuracion "
echo "[11] find \-user [usuario] 2>/dev/null --> ver recursos de los que el usuario es propietario y elimina los errores "
echo "[12] find \-perm -u=s 2>/dev/null --> Busca archivos SUID que se ejecutan con permisos de propietario " 
echo "[13] Puertos internos abiertos proc/net/tcp "
echo "[14] Grupos en los que estamos "ID" "
echo "[15] Tipo de archivo file" archivo" "
echo -e "[16] w --> para ver que usuarios estan conectados ahora mismo al sistema  \n"

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
		 watch -n 1 ls -l $comando
	   else
		 watch -n 1 ls -l $1 # 1 es el primer parametro que le pasamos
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
		 find \-name *config*
	   else
		 find $1 -name *config* # la ruta que le pasamos
	   fi
	;;
	11) if [ $# -ne 1 ]; then
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
	 12) if [ $# -ne 1 ]; then
	 	  find \-perm -u=s 2>/dev/null
	 	 else
	 	  find $1 -perm -u=s 2>/dev/null # para hacerlo desde la Raiz poner /
	 	 fi
	 ;;
	 13) cat /proc/net/tcp | awk '{print $2}' | grep -v local | tr ': ' ' ' | awk 'NF{print $NF}'
	 ;;
	 14) id
	 ;;
	 15) if [ $# -ne 1 ]; then
	 	 	 echo -e "Introduce archivo \n"
	 	 	 read -r archivo
	 	 	 file $archivo
	 	 else
	 	 	 file $1 # 1 es el primer parametro que le pasamos
	 	 fi
	 ;;
	 16) watch -n 1 'w'
	 ;;		  
esac

