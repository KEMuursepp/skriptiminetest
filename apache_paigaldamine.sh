#!/bin/bash
APACHE2=$(dpkg—query -W -f='${Status}' apache2 2>/dev/null | grep -c  'ok installed')
if [ $APACHE2 -eq 0 ]; then
	apt install apache2
elif [ $APACHE2 -eq 1 ]; then
	service apache2 start
	service apache2 status
fi
