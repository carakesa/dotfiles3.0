#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  "cliphist"
  "fuzzel"
  "i3status-rust"
  "kwayland"
  "kwayland-integration"
  "light"
  "mako"
  "plasma-wayland-protocols"
  "python-i3ipc"
  "qt6-wayland"
  "slurp"
  "grim"
  "sway"
  "swaybg"
  "swayidle"
  #"swaylock"
  "wayland-protocols"
  "wl-clipboard"
  "wlroots"
  "wtype"
  "xorg-server-xwayland"
)

install_pacman $packages

declare -a y_pkgs=(
  "i3keys"
)

install_yay $y_pkgs
