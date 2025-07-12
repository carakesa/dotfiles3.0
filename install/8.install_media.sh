#!/usr/bin/bash

source export_vars.sh

declare -a packages=(
  "ffmpeg"
  "ffmpegthumbnailer"
  "flac"
  "geoip-database"
  "gst-libav"
  "gst-plugin-libcamera"
  "gst-plugin-pipewire"
  "gstreamer-vaapi"
  "imagemagick"
  "jbig2dec"
  "lame"
  "lib32-gst-plugins-base"
  "lib32-gst-plugins-base-libs"
  "lib32-gst-plugins-good"
  "lib32-gstreamer"
  "mpv"
  "opus"
  "pipewire"
  "pipewire-audio"
  "pipewire-jack"
  "pipewire-pulse"
  "pipewire-v4l2"
  "pulsemixer"
  "rav1e"
  "vlc"
  "wireplumber"
  "xdg-desktop-portal"
  "xdg-desktop-portal-wlr"
  "zathura"
  "zathura-djvu"
  "zathura-pdf-mupdf"
)
install_pacman $packages

declare -a y_pkgs=(
)

install_yay $y_pkgs
