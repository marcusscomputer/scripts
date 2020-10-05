#!/bin/bash
while :
do
	apt update
	apt -t buster-backports update
	sleep 3600
done
