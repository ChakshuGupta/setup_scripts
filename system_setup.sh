#!/bin/sh

sudo apt update && upgrade

# Setup development environment
sudo apt install -y \
                 build-essential \
                 cmake \
                 curl \
                 docker.io \
                 doxygen \
                 git \
                 libffi-dev \
                 libssl-dev \
                 openssh-client \
                 python2.7 \
                 python2.7-dev \
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

git config --global user.name "Chakshu Gupta"
git config --global user.email "chakshugupta@gmail.com"
git config --global core.editor vim


# ssh-keygen
# xclip -sel clip < ~/.ssh/id_rsa.pub

# Install Telegram
sudo add-apt-repository ppa:atareao/telegram
sudo apt update && sudo apt install -y telegram


# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
