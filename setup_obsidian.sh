#!/bin/bash

# Prepare for AppImage
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt install appimagelauncher

# Get the latest AppImage
curl -s curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest \
| grep -E "[Oo]bsidian-[0-9]+\.[0-9]+\.[0-9]+\.AppImage" \
| grep browser_download_url \
| cut -d : -f 2,3 | tr -d \" | wget -i -

# Execute the AppImage to integrate and run
chmod +x *.AppImage
./*.AppImage
