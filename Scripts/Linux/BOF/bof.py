#!/usr/bin/python 
import sys, socket

direccion = '127.0.0.1'
puerto = 9999
buffer = #Definir buffer

try:
	print '[+] Enviando buffer'
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect((direccion, puerto))
	s.send(buffer + '\r\n')
	s.recv(1024)			
except:
 	print '[!] No se puede conectar al programa.'
 	sys.exit(0)
finally:
	s.close()