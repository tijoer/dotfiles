#!/bin/bash

# Install btop
echo "Downloading and installing btop..."
wget -qO btop.tbz https://github.com/aristocratos/btop/releases/latest/download/btop-armv7l-linux-musleabihf.tbz
sudo tar -xvf btop.tbz -C /usr/local/bin --strip-components=3 ./btop/bin/btop
rm btop.tbz
