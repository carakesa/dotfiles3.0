#!/usr/bin/env bash

# Give the system a brief moment to initialize on boot
sleep 2

# Create an infinite loop monitoring niri's output event streams
niri msg --json event-stream | while read -r line; do
  # Check if the output configuration changed
  if echo "$line" | grep -q '"OutputChanged"'; then
    # Extract the current transformation state of your main display
    # (Replace 'eDP-1' if your laptop screen has a different name in 'niri msg outputs')
    TRANSFORM=$(niri msg --json outputs | jq -r '."eDP-1".transform')

    if [ "$TRANSFORM" != "normal" ] && [ "$TRANSFORM" != "null" ]; then
      # If screen is rotated, ensure squeekboard is running
      if ! pgrep -x "squeekboard" >/dev/null; then
        squeekboard &
      fi
    else
      # If screen returns to normal, kill squeekboard
      pkill -x "squeekboard"
    fi
  fi
done
