#!/bin/bash
for x in knock1 knock2 knock3; do nmap -Pn --max-retries 0 -p $x 10.10.10.10; done