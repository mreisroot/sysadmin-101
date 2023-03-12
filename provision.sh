#!/bin/sh

# Install screen, git and lynx browser 
pkg update
pkg install -y screen git lynx 

# Get configuration files and scripts for lynx
su - vagrant <<- EOF
  git clone -b server https://gitlab.com/mreisroot/dotfiles.git

  # Run the setup scripts for the lynx configuration
  for i in lynx scripts; do
    cd /home/vagrant/dotfiles/\$i
    ./setup
  done
EOF
