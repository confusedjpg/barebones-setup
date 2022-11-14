#!/bin/bash
# should be ran every time at startup
yes | pacman -Scc # clean package cache
alias beeep="speaker-test -t sine -f 1000 -l 1" # set alias for speaker test
amixer set Master mute # mute just in case
loadkeys fr # set keyboard layout to french
xbacklight -set 100 # set brightness to 70%