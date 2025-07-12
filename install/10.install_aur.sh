#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  #  "adb-sync-git"
  #  "anki-qt5"
  #  "android-completion"
  "brother-hl-l3290cdw"
  #  "czkawka-gui-bin"
  "inxi"
  #  "firefox-tridactyl-native"
  #  "j4-dmenu-desktop"
  #  "simple-mtpfs"
  #  "paru"
)

install_yay $packages
