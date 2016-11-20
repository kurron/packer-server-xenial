# Overview
This project automates the development of Vagrant boxes I use for software development.  
This project focuses on creating a bare bones Ubuntu 16.04 server box.  The expectation
is that the output of this project gets fed into another Packer project that enhances
the box with additional software, such as Docker or MongoDB.

# Prerequisites
* a working [Packer](https://www.packer.io/) installation
* a working [Vagrant](https://www.vagrantup.com/) installation

## Custom VirtualBox Appliance
Currently, the process relies upon a VirtualBox applicance which was created by hand and is not
currently part of this project.  I did this because I wanted to use the virtualization aware kernel
and couldn't figure out how to do that in an automated fashion.  For this to work,
you must have `Xenial-x64-Server.ova` in the root directory.

# Building
Type `./build.sh` to build the server box.

# Installation
The scripts will automatically install the newly built boxes into Vagrant's cache
and publish them to Hashicorp's Atlas.

# Tips and Tricks

## Testing The Box
`vagrant up` will launch the server VM.
Once you are statisfied that the box built correctly, use `vagrant destroy` to remove it.

## Enhanced Versions
Enhancements to this box live in Git branches.  Explore the other branches of
this project to see what might be of interest to you, such as a Docker server
or a box with the Hashistack installed.

# Troubleshooting

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).
