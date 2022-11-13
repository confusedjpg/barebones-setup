#!/bin/bash
# Simple Arch setup in a barebones install, run as root
# Required: iwd, xbacklight, dhcpcd, alsa-utils, amixer; install with `sudo pacman -S <package>`

# below list of commands could be put in a startup.sh script and ran every boot
alias beeep="speaker-test -t sine -f 1000 -l 1" # set alias for speaker test
amixer set Master mute # mute just in case
loadkeys fr # set keyboard layout to french
xbacklight -set 70 # set brightness to 70%
###############################################################################

# below commands should be ran only once (i hope)
systemctl enable iwd
systemctl enable dhcpcd
systemctl start --now iwd
systemctl start --now dhcpcd
dhcpcd wlan0 # enable dhcp on wlan0, this can sometimes require a different name depending on the device
printf 'Pn1q7hNM34fpGcAVq9\n' | iwctl station wlan0 connect "Bbox-1DB9A449" psk #connect to network
