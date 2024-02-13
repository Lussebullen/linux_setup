#!/bin/bash

# Install as described: https://github.com/alacritty/alacritty/blob/master/INSTALL.md
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rustup override set stable
rustup update stable

# Arch dependencies
sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python --noconfirm 

cargo build --release

sudo chmod +x target/release/alacritty

sudo cp target/release/alacritty /usr/local/bin/alacritty

cd ..
rm -rf alacritty
