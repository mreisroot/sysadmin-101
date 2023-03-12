# Sysadmin 101

A Vagrant environment I created for simulating an on-premise production server where there are no plugins/facilitators for command line utilities, except the configuration files and scripts for the lynx text-based browser.

## Motivation

The goal of this project is to provide a more "traditional" system administration environment in order to develop productivity on the terminal of any UNIX system, even if it's a legacy one.

## How to use this project

[Make sure you have Vagrant installed](https://developer.hashicorp.com/vagrant/downloads)

To create/power on on the virtual machine, run:

`vagrant up`

To access the virtual machine, run:

`vagrant ssh`

To power off the virtual machine, run:

`vagrant halt`

To reboot the virtual machine, run:

`vagrant reload`

To destroy the virtual machine, run:

`vagrant destroy -f`

PS: All the commands have to be executed on the directory where the [Vagrantfile](./Vagrantfile) is located, because Vagrant searches for it to do its operations. Otherwise, the commands won't work.

## Tools to learn

* bash
* sh
* vi
* GNU screen
* lynx 

## Learning resources

* man pages
* info pages
* text-only online material to be searched using lynx

Well, if you find a good learning resource in the form of video, pdf or anything that requires a graphical interface, use this resource on your host machine and run the commands on the virtual machine, because the it doesn't have a graphical interface.

The virtual machine doesn't have a graphical interface, because the purpose of this project is to provide a server environment, not a desktop environment.

Of course, if you really want to install a graphical interface on the virtual machine, you're free to do so. Check the documentation of the operating system of this virtual machine or search for tutorials on how to get a desktop environment.

### Some documentation for a starting point

* `man intro`: Introduction to UNIX/Linux commands;
* `info bash`: Bash info page, with examples, divided by topic;
* `man bash`: Bash man page, for an in-depth understanding and a reference resource;
* `man vi`: Vi man page;
* `info screen`: Screen info page, with examples, divided by topic;
* `man screen`: Screen man page, for an in-depth understanding and a reference resource;
* `man lynx`: Lynx man page;
* `man man`: man page of the man command;
* `info info`: info page of the info command.
* `man sh`: man page of Bourne shell, the POSIX shell
