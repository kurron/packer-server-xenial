#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-ubuntu.json
packer build --force xenial-x64-ubuntu.json
vagrant box add --force --name xenial-x64-ubuntu/5.1.6 vagrant/xenial-x64-ubuntu.box
vagrant box list
