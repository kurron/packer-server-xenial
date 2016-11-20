#!/bin/bash

echo '%sudo    ALL=(ALL)  NOPASSWD:ALL' >> /etc/sudoers.d/passwordless 
echo '%wheel    ALL=(ALL)  NOPASSWD:ALL' >> /etc/sudoers.d/passwordless 
echo 'Defaults !requiretty' >> /etc/sudoers.d/passwordless
chmod 0400 /etc/sudoers.d/passwordless 

