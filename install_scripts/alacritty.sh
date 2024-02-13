#!/bin/bash

# Install as described: https://github.com/alacritty/alacritty/blob/master/INSTALL.md
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rustup override set stable
rustup update stable

# Debian/Ubuntu dependencies
apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

cargo build --release

chmod +x target/release/alacritty

sudo cp target/release/alacritty /usr/bin/alacritty

cd ..
rm -rf alacritty
