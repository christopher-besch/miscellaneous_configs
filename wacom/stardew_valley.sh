#!/bin/bash
set -euo pipefail
IFS=$' \n\t'
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

#########################################################
# setup wacom Wacom Intuos S for playing Stardew Valley #
#########################################################

# xsetwacom --list devices
STYLUS=18
PAD=19

# set draw area for 1920:1080 screen
xsetwacom --set $STYLUS Area 0 0 15200 8550

# press -> nothing
xsetwacom --set $STYLUS Button 1 0
# lower stylus button -> left click
xsetwacom --set $STYLUS Button 2 1
# upper stylus button -> right click
xsetwacom --set $STYLUS Button 3 3

# 1 -> 1
xsetwacom --set $PAD Button 1 "key 1"
# 2 -> 2
xsetwacom --set $PAD Button 2 "key 2"
# 3 -> 3
xsetwacom --set $PAD Button 3 "key 3"

