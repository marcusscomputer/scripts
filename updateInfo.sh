#!/bin/bash
rm -rf /tmp/apt
APTU=`apt list --upgradable | wc -l`
APT=`expr $APTU - 1 > /tmp/apt`
cat /tmp/apt
