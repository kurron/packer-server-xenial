#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
until sudo apt update; do echo "Waiting for apt-get lock"; sleep 5; done
apt install -y build-essential dkms linux-headers-$(uname -r) ssh acpid python-setuptools python-dev git
