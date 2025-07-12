#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  #  "arch-wiki-docs"
  "bat"
  #  "chezmoi"
  "rcm"
  "fzf"
  "jq"
  "htop"
  "lsd"
  #  "mc"
  "navi"
  "nnn"
  "ripgrep"
  "tealdeer"
  "vi"
  #  "vifm"
  #  "xh"
  #  "zoxide"
  #  "zsh"
  #  "zsh-doc"
  "fish"
  "fisher"
)

install_pacman $packages
