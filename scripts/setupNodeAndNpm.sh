#!/bin/bash

echo "Install new NodeJs version..."
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
	sudo apt-get install -y nodejs

