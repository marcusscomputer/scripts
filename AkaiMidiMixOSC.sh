#!/bin/bash
echo CALL
# Acquire values
var="$1 $2 $3"
# Place them in array
vars=( $var )

# OSC command
CMD="sendosc 127.0.0.1 9000"

CHN=`expr $((16#$2))`
VAL=`bc <<< 'scale=2; $((16#$3)) / 255'`

if [ "$CHN" = "127" ]; then
	echo $CMD /track/1/volume f $VAL
fi

# MIDI value
# echo | expr $((16#$1)) / 2
