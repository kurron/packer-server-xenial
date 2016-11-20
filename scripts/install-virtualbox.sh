#!/bin/bash -x

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
VBOX_ISO=VBoxGuestAdditions_$VBOX_VERSION.iso
mount -o loop $VBOX_ISO /mnt
/mnt/VBoxLinuxAdditions.run --nox11
umount /mnt

#Remove the guest additions ISO so it doesn't take up space in the finished base box:
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso
