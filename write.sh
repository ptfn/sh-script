#!/bin/bash

sudo umount $2 && echo "OK" || echo "FAILED" &&
sudo dd if=$1 of=$2 && echo "OK" || echo "FAILED"
sync