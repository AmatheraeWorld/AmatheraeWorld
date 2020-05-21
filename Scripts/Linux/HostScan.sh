#!/bin/bash
for i in $(seq 1 254); do
	timeout 1 bash -c "ping -c 1 10.0.3.$i" > /dev/null 2>&1 && echo "Host 10.0.3.$i is ACTIVE" &
done; wait
