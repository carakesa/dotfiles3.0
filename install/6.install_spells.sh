#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  "aspell-en"
  "hunspell-en_US"
)

install_pacman $packages

declare -a y_pkgs=(
)

install_yay $y_pkgs
