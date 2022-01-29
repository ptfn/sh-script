#!/bin/bash

sudo umount $2 && echo "===== UMOUNT OK =====" || echo "===== FAILED ====="
sudo dd if=$1 of=$2 && echo "===== WRITE OK =====" || echo "===== FAILED ====="
sync
