from sys import argv
from pynput.keyboard import Key, Controller
from time import sleep
keyboard = Controller()
try:
	version = argv[1]
except:
	version = ""
sleep(3)
keyboard.type("script /dev/null -c bash")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.press(Key.ctrl)
keyboard.press('z')
keyboard.release(Key.ctrl)
keyboard.release('z')
sleep(0.5)
keyboard.type("stty raw -echo")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("fg")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("reset")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(2.5)
keyboard.type("xterm")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("export TERM=xterm-256color")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("export SHELL=bash")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.type("stty rows 24 columns 80")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(0.5)
keyboard.press(Key.ctrl)
keyboard.press('l')
keyboard.release(Key.ctrl)
keyboard.release('l')