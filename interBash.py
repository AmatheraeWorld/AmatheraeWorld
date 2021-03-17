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
sleep(2)
keyboard.press(Key.ctrl)
keyboard.press('z')
keyboard.release(Key.ctrl)
keyboard.release('z')
sleep(2)
keyboard.type("stty raw -echo")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(2)
keyboard.type("fg")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(2)
keyboard.type("export TERM=screen")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
sleep(2)
keyboard.press(Key.ctrl)
keyboard.press('l')
keyboard.release(Key.ctrl)
keyboard.release('l')
