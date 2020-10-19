from sys import argv
from pynput.keyboard import Key, Controller
from time import sleep
keyboard = Controller()
try:
	version = argv[1]
except:
	version = ""
sleep(3)
keyboard.type("python"+version+" -c 'import pty; pty.spawn(\"/bin/bash\")'")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(3)
keyboard.type("script /dev/null -c bash")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(3)
keyboard.press(Key.ctrl)
keyboard.press('z')
keyboard.release(Key.ctrl)
keyboard.release('z')
sleep(0.5)
keyboard.type("stty raw -echo")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("reset")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("export TERM=xterm")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("export SHELL=bash")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("fg")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
keyboard.press(Key.enter)
keyboard.release(Key.enter)
exit

