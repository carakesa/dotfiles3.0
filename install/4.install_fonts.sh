#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  "adwaita-fonts"
  "fontconfig"
  "awesome-terminal-fonts"
  "cantrell-fonts"
  "gsfonts"
  "gtk-engine-murrine"
  "kvantum"
  "noto-fonts"
  "noto-fonts-emoji"
  "noto-fonts-cjk"
  "noto-fonts-extra"
  "otf-droid-nerd"
  "papirus-icon-theme"
  "ttf-dejavu-nerd"
  "ttf-firacode-nerd"
  "ttf-hack-nerd"
  "ttf-iosevka-nerd"
  "ttf-jetbrains-mono-nerd"
  "ttf-liberation"
  "ttf-nerd-fonts-symbols-common"
  "ttf-nerd-fonts-symbols"
  "ttf-noto-nerd"
  "ttf-roboto"
  "ttf-terminus-nerd"
  "xorg-fonts-encodings"
)

install_pacman $packages
