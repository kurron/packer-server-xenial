# Overview
This project automates the development of Vagrant boxes I use for software development.  I make
heavy use of Docker so the boxes have a dedicated partition just for the Docker images and contaners.

# Prerequisites
* a working [Packer](https://www.packer.io/) installation
* a working [Vagrant](https://www.vagrantup.com/) installation

# Building
Type `./build-trusty-server.sh` to build the server box and `./build-trusty-desktop.sh` to build
the desktop box.

# Installation
The scripts will automatically install the newly built boxes into Vagrant's cache.

# Tips and Tricks

## Testing The Box

`vagrant up server` will launch the server VM and `vagrant up desktop` will launch the desktop VM. 
Once you are statisfied that the boxes built correctly, use `vagrant destroy` to remove the VMs.

# Troubleshooting

## Custom VirtualBox Appliance
Currently, the process relies upon a VirtualBox applicance which was created by hand and is not 
currently part of this project.  I did this because I wanted to use the virtualization aware kernel 
and couldn't figure out how to do that in an automated fashion.

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

# List of Changes
