#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate centos-x64-gnome-baked.json
packer build --force centos-x64-gnome-baked.json
vagrant box add --force --name centos-x64-gnome-baked/5.1.8 vagrant/centos-x64-gnome-baked.box
vagrant box list
