#!/bin/bash
sudo tcpdump -i wlp3s0 -tttt port 80 or port 443 > site.txt &&
	echo "OK" ||
	echo "FALSE"
