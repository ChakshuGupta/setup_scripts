#!/bin/sh

sudo apt update && upgrade

# Setup development environment
sudo apt install -y \
                 build-essential \
                 cmake \
                 curl \
                 docker.io \
                 doxygen \
                 dpkg-dev \
                 gdb \
                 git \
                 htop \
                 libffi-dev \
                 libssl-dev \
                 libx11-dev \
                 make \
                 openssh-client \
                 python3-pip \
                 python3.8 \
                 python3.8-dev \
                 terminator \
                 vim-gtk3 \
                 virtualbox
                 xclip \

pip3 install setuptools
pip3 install numpy
pip3 install pylint
pip3 install ipython
pip3 install virtualenv

git config --global user.name "Chakshu Gupta"
git config --global user.email "chakshugupta@gmail.com"
git config --global core.editor vim


# ssh-keygen
# xclip -sel clip < ~/.ssh/id_rsa.pub

# Install Telegram
sudo apt install telegram-desktop

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Setup vim
cd
git clone https://github.com/ChakshuGupta/dotvim.git .vim

cd ~/.vim
./install.sh

# Install vs code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders
