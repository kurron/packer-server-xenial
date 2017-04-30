#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

PACKER_FILE=${1:-packer.json}

packer validate ${PACKER_FILE}
packer build --force ${PACKER_FILE}
vagrant box add --clean --force --name xenial-server-docker vagrant/xenial-server-docker.box
vagrant box list
