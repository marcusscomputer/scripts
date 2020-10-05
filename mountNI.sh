#/bin/bash

sudo mount $1 /mnt/iso -t udf -o loop,ro,exec,unhide
cd /mnt/iso
