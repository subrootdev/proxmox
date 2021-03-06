#!/bin/sh
echo 'Existing lock files'
ls -l /run/lock/qemu-server
read -p 'Enter the VM ID here to delete corresponding lock e.g. 101: ' vmid
rm -f /run/lock/qemu-server/lock-$vmid.conf
echo
echo '---Remaining locks---'
ls -l /run/lock/qemu-server
echo
qm stop $vmid && qm status $vmid
