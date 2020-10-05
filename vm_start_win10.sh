#!/bin/bash

# Scream file size variable
SCRMBUF=0

# Just in case
sudo aa-complain /usr/sbin/libvirtd

# Set permissions
sudo touch /dev/shm/looking-glass &&
sudo touch /dev/shm/scream-ivshmem &&
sudo chown marcus-s:kvm /dev/shm/looking-glass &&
sudo chown marcus-s:kvm /dev/shm/scream-ivshmem &&
sudo chmod 660 /dev/shm/looking-glass 
sudo chmod 660 /dev/shm/scream-ivshmem

# Start the Windows 10 domain
virsh start Windows10

# Start the Looking Glass client
#/usr/bin/looking-glass-client &

# And initialize sound... but only if the file has content
while :
do
	sleep 1
	SCRMBUF=$(du -sb /dev/shm/scream-ivshmem | awk '{ print $1 }')
	if (($SCRMBUF>0));
	then
		echo "Windows 10 started. LG and Scream running."
		/usr/bin/scream -m /dev/shm/scream-ivshmem
		#echo "FILE BIGGER THAN 0"
		break
	fi
done
