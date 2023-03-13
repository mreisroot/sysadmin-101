#!/bin/sh

# Install screen, git and lynx browser 
pkg update
pkg install -y screen git lynx 

# Link .cshrc to vagrant user directory
ln -sf /vagrant/.cshrc /home/vagrant/.cshrc

# Get configuration files and scripts for lynx
su - vagrant <<- EOF
  git clone -b server https://gitlab.com/mreisroot/dotfiles.git

  # Run the setup scripts for the lynx configuration
  foreach i (lynx scripts)
    cd /home/vagrant/dotfiles/\$i
    ./setup
  end
EOF
