#!/bin/bash

# Set timezone to Europe/Budapest
sudo timedatectl set-timezone Europe/Budapest

# Update package list
sudo apt update

# Install necessary packages
sudo apt install -y linux-image-virtual linux-tools-virtual linux-cloud-tools-virtual

# Modify /root/.bashrc to activate force_color_prompt and bash_completion
# Uncomment 'force_color_prompt=yes' line
sudo sed -i 's/^#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc

# Uncomment and activate bash_completion block
sudo sed -i '/^#if \[ -f \/etc\/bash_completion \] && ! shopt -oq posix; then/,+2 s/^#//' /root/.bashrc

# Reboot the system
sudo shutdown -r now