#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate xenial-x64-server.json
packer build --force xenial-x64-server.json
vagrant box add --clean --force --name xenial-x64-server/5.1.8 vagrant/xenial-x64-server.box
vagrant box list
