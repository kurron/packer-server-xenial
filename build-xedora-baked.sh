#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xedora-x64-baked.json
packer build --force xedora-x64-baked.json
vagrant box add --force --name xedora-x64-baked/5.1.9 vagrant/xedora-x64-baked.box
vagrant box list
