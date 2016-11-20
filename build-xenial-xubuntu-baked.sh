#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-xubuntu-baked.json
packer build --force xenial-x64-xubuntu-baked.json
vagrant box add --force --name xenial-x64-xubuntu-baked/5.1.9 vagrant/xenial-x64-xubuntu-baked.box
vagrant box list
