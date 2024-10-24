#!/bin/bash

sudo timedatectl set-timezone Europe/Budapest
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y linux-image-virtual linux-tools-virtual linux-cloud-tools-virtual vim net-tools

sudo sed -i 's/^#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc
sudo sed -i '/^#if \[ -f \/etc\/bash_completion \] && ! shopt -oq posix; then/,+2 s/^#//' /root/.bashrc

sudo shutdown -r now
