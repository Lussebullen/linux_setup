#!/bin/bash

git clone https://aur.archlinux.org/onedriver.git
cd onedriver
makepkg -si
cd ..
rm -rf onedriver
