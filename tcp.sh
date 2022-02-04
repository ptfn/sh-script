#!/bin/bash
sudo tcpdump -i $1 -tttt port 80 or port 443 > site.txt && echo "OK" || echo "FALSE"