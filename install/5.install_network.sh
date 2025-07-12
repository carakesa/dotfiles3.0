#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  "bluez"
  "bluetui"
  "bluez-utils"
  "bluez-lib"
  "ethtool"
  "inetutils"
  "iwd"
  "nfs-utils"
  "wavemon"
)

install_pacman $packages

declare -a y_pkgs=(
)

install_yay $y_pkgs
