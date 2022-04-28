#!/bin/bash

git config --global user.name "ptfn"
git config --global user.email "CipherDogs@protonmail.com"
git config --global user.signingkey $1
git config --global commit.gpgsign true