#!/bin/bash

for f in install_scripts/*sh; do
	echo "Installing $f"
	bash "$f"
done
