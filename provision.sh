#!/bin/sh

# Install BSD vi (open source distribution of the original vi editor), lynx browser and bash documentation
apt update
apt purge -y vim* vim-tiny
apt install -y nvi lynx bash-doc

# Remove unnecessary packages
apt autoremove -y

# Copy .bashrc to user directory
cp /vagrant/.bashrc /home/vagrant/.bashrc
chown vagrant:vagrant /home/vagrant/.bashrc

# Get configuration files and scripts for lynx
su - vagrant <<- EOF
  git clone -b server https://gitlab.com/mreisroot/dotfiles.git

  # Run the setup scripts for the lynx configuration
  for i in lynx scripts; do
    cd /home/vagrant/dotfiles/\$i
    ./setup
  done
EOF
