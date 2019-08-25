#!/bin/bash

mkdir -p ~/.config/compton ~/.config/i3

cp compton.conf ~/.config/compton
cp i3-config ~/.config/i3/config
cp vimrc ~/.vimrc
cp ssh-config ~/.ssh/config
sudo cp xorg.conf /etc/X11/

echo 'export EDITOR=vim' >> ~/.bashrc
echo 'autospawn = no' >> ~/.config/pulse/client.conf

# Bash completion for jack_connect.
cat jack_connect_completion.sh >> ~/.bashrc
