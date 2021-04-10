from sys import argv
from pynput.keyboard import Key, Controller
from time import sleep
keyboard = Controller()
sleep(3)
keyboard.press(Key.ctrl)
keyboard.press('l')
keyboard.release(Key.ctrl)
keyboard.release('l')
sleep(0.5)
keyboard.type("cat *.txt && whoami && hostname && ip addr")
keyboard.press(Key.enter)
keyboard.release(Key.enter)
