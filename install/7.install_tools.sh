#!/usr/bin/bash

source export_vars.sh

# "aria2"
declare -a packages=(
  "alacritty"
  "cups"
  "cups-filters"
  "cups-pdf"
  "gvfs"
  "gvfs-mtp"
  "gvfs-nfs"
  "make"
  "man-db"
  "man-pages"
  "ncdu"
  "pavucontrol"
  "reflector"
  "source-highlight"
  "redshift"
  "thunar"
  "tree"
  "foot"
  "wezterm"
  "wget"
  "upower"
)

install_pacman $packages

declare -a y_pkgs=(
  "reflector-simple"
  "pacseek"
)

install_yay $y_pkgs
