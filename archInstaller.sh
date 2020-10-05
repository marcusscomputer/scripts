#!/bin/bash

echo ""
echo " marcus-s Arch Install for systmOne"
echo ""
echo " 1) ZERO FORMAT OS DISK"
echo ""
lsblk
echo ""
echo "    Enter OS disk, not partition:"
read SYSDISK
echo $SYSDISK
# dd if=/dev/zero of=/dev/$SYSDISK bs=8M status=progress

echo ""
echo " Zero format done."
echo ""
echo " 2) SET UP OF PARTITIONS"
echo ""
echo " You need:"
echo " - EFI partition"
echo " - Kernel partition"
echo " - Encrypted root system partition"
echo " - Anything else"