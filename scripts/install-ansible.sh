#!/bin/bash -x

until sudo apt-get -y update; do echo "Waiting for apt-get lock"; sleep 5; done

# supposedly, this is the newer way to install pip
sudo apt-get install -y python-pip python-dev build-essential libssl-dev libffi-dev apt-transport-https
sudo pip install --upgrade pip
sudo pip install --upgrade ansible
sudo pip install --upgrade setuptools
sudo pip install --upgrade boto

# Ansible currently breaks on the new docker-py 1.10.0 so we pin it for now.
# https://github.com/ansible/ansible/issues/17495
sudo pip install 'docker-py==1.9.0'

# install the required Ansible roles
sudo ansible-galaxy install --verbose --role-file /tmp/desktop-requirements.yml

# for some reason, this is owned by root so we clear it out for the normal user
sudo rm -rf /home/vagrant/.ansible

# run the playbook
ansible-playbook --verbose --inventory-file /tmp/inventory --user vagrant /tmp/desktop.yml
