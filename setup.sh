#!/bin/bash
# Simple Arch setup in a barebones install, run as root
# Required: iwd, xbacklight, dhcpcd, alsa-utils, amixer, openssh;
pacman -Sy
pacman -S iwd xbacklight dhcpcd alsa-utils amixer openssh

systemctl enable iwd
systemctl enable dhcpcd
systemctl enable sshd

dhcpcd wlan0 # enable dhcp on wlan0, this can sometimes require a different name depending on the device
printf 'Pn1q7hNM34fpGcAVq9\n' | iwctl station wlan0 connect "Bbox-1DB9A449" psk #connect to network

echo "Rebooting..."
reboot now