#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate packer.json
packer build --force packer.json
vagrant box add --clean --force --name xenial-server-bare/5.1.10 vagrant-bare/xenial-server-bare.box
vagrant box list
