#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate maipo-x64-server.json
packer build --force maipo-x64-server.json
vagrant box add --clean --force --name maipo-x64-server/5.1.8 vagrant/maipo-x64-server.box
vagrant box list
