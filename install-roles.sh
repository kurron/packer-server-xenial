#!/bin/bash

# install Ansible roles from Galaxy
rm -rf roles
ansible-galaxy install --verbose --role-file requirements.yml --roles-path roles
ansible-galaxy list --roles-path roles

# soft-link the roles directory so Ansible can find them
sudo mkdir -p /etc/ansible
sudo ln -s $(pwd)/roles /etc/ansible/roles

