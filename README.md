# Overview
This project builds a Vagrant box that has a development version of
Kubernetes installed.  

# Prerequisites
* a working [Packer](https://www.packer.io/) installation
* a working [Vagrant](https://www.vagrantup.com/) installation
* a Kubernetes virtual machine exported as a VirtualBox appliance

## Kubernetes VirtualBox Appliance
Currently, the process relies upon a VirtualBox appliance which was created by
hand.  This was done because the installation of
[Canonical's Distribution of Kubernetes](https://www.ubuntu.com/containers/kubernetes)
is a by-hand-only process. For this to work, you must have
`Xenial-x64-Server-K8s.ova` in the root of the directory.  This is the
VirtualBox appliance of the K8s installation you've done by hand.

# Building
Type `./build.sh` to build the server box.

# Installation
The scripts will automatically install the newly built box into Vagrant's cache.

# Tips and Tricks

## Testing The Box
`vagrant up` will launch the server VM and `vagrant ssh` to connect. Use
`bin/kubectl.conjure-kubernetes-core-738 get componentstatuses` to monitor
your K8s installation.  It can take a few minutes for all components to come
on-line. Once you are satisfied that the box built correctly, use
`vagrant destroy` to remove it.

# Troubleshooting

# License and Credits
This project is licensed under the
[Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).
