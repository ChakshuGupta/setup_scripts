#!/bin/sh

sudo apt update && upgrade

# Setup development environment
sudo apt install -y terminator \
                 python3.8 \
                 python3.8-dev \
                 python3-pip \
                 cmake \
                 git \
                 build-essential \
                 doxygen \
                 docker.io \
                 curl \
                 python2.7 \
                 python2.7-dev \
                 libssl-dev \
                 libffi-dev \
                 python-dev

sudo pip3 install setuptools
sudo pip3 install numpy

git config --global user.name "Chakshu Gupta"
git config --global user.email "chakshugupta@gmail.com"
git config --global core.editor vim

# Install Telegram
sudo add-apt-repository ppa:atareao/telegram
sudo apt update && sudo apt install -y telegram


# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb