#!/bin/bash

~/Private/Scripts/AkaiMidiMix.sh &
pacmd load-module module-jack-source channels=2; pacmd load-module module-jack-sink channels=2 &
a2jmidid -e &

# Route Wine apps and games to JACK
# /home/marcus-s/Private/Scripts/wine-to-jack
