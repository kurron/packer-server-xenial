#!/bin/bash

echo 'Zeroing device to make space...'
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync

echo 'Zeroing device to make space...'
dd if=/dev/zero of=/var/lib/docker/EMPTY bs=1M
rm -f /var/lib/docker/EMPTY
sync


