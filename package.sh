#!/bin/bash

for package in `cat packagelist`
do 
    sudo apt-get download $package
done
