#!/usr/bin/env sh

if [ -e "$HOME/.steam/steam/steamapps/common/RimWorld/Mods/" ]; then
  RIMWORLD_MOD_DIR="$HOME/.steam/steam/steamapps/common/RimWorld/Mods"
else
  echo "Local RimWorld mod dir not found!"
  return 1
fi

TARGET_DIR="$RIMWORLD_MOD_DIR/Rimatomics Deutsch"

rm -fr "$TARGET_DIR"
mkdir -p "$TARGET_DIR"
cp -r About Languages LICENSE "$TARGET_DIR"