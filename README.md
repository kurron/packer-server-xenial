# Overview
This project enchances the Ubuntu 16.04 box created in the master branch
by installing Docker and its companion tool set.

# Prerequisites
* a working [Packer](https://www.packer.io/) installation
* a working [Vagrant](https://www.vagrantup.com/) installation

# Building
Type `./build.sh` to build the server box.

# Installation
The scripts will automatically install the newly built boxes into Vagrant's cache
and publish them to Hashicorp's Atlas.

# Tips and Tricks

## Testing The Box
`vagrant up` will launch the server VM.
Once you are statisfied that the box built correctly, use `vagrant destroy` to remove it.

# Troubleshooting

## Existing Bare Bones Box Requirement
Packer [currently does not support importing an existing Vagrant box](https://github.com/mitchellh/packer/issues/869) and enhancing it.
The workaround is to reference the previously imported OVA from VirtualBox itself.  The `ovf` variable in the `packer.json` illustrates
how ugly the location is.  You might have to adjust that path to match the exact version you have on your disk currently.

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).
