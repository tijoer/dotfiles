#!/bin/bash

# Setup neovim
# Install the latetest stable version. Ubuntu and Debian packages are most of the time too old to work
# with most of the plugins.
# TODO Add a script to download the right package for the architecture.
arch=$(arch)
if [[ $arch == x86_64* ]]; then
    echo "X64 Architecture"A
    echo "Downloading Neovim..."
    wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb -O /tmp/nvim.deb
    sudo dpkg -i /tmp/nvim.deb
    rm /tmp/nvim.deb
elif [[ $arch == i*86 ]]; then
    echo "X32 Architecture"
    echo "Could not install neovim. TODO Add 32bit script..."
elif  [[ $arch == arm* ]] || [[ $arch = aarch64 ]]; then
    echo "ARM Architecture"
    sudo apt install cmake libtool-bin gettext
    git clone --depth 1 https://github.com/neovim/neovim.git
    cd neovim
    make CMAKE_BUILD_TYPE=RelWithDebInfo -j3
    sudo make install
fi

echo "Installing universal ctags..."
sudo apt-get install -y universal-ctags #needed vor vim tagbar plugin. unictags has rust support. Exuberant-ctags does not have good Rust support.
#sudo apt-get -y install exuberant-ctags        # needed for vim tagbar plugin

# echo "Install new NodeJs version..."
# # Needed for many plugins in Neovim
# curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
#         sudo apt-get install -y nodejs

sudo apt install -y python3-pip
pip3 install pynvim
sudo npm i -g neovim

# Packer seems to fail the first time. Run it again. This is due to the fact that Packer can not handle --headless mode.
# There is some discussion on Github regarding the issue, but no solution yet. This works well enough, otherwise we would
# need to run :PackerSync manually after the first run and get bombarded with error messages until then.
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'silent PackerSync' 2&> /dev/null || true
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'silent PackerSync' 2&> /dev/null || true

# Install win32yank into the bin folder to make neovim integration withing WSL possible.
sudo apt-get install -y unzip
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/
