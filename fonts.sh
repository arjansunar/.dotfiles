#!/bin/bash

# Define the font URL and the target directory
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Iosevka.zip"
FONT_DIR="$HOME/.local/share/fonts"

# Check if the font directory exists, create it if it doesn't
if [ ! -d "$FONT_DIR" ]; then
  echo "Creating font directory at $FONT_DIR"
  mkdir -p "$FONT_DIR"
fi

# Download the font
echo "Downloading Iosevka Nerd Font..."
wget -q --show-progress "$FONT_URL" -O "$HOME/Iosevka.zip"

# Unzip the downloaded font
echo "Unzipping the font..."
unzip -q "$HOME/Iosevka.zip" -d "$FONT_DIR"

# Clean up the zip file
echo "Cleaning up..."
rm "$HOME/Iosevka.zip"

# Refresh the font cache
echo "Refreshing font cache..."
fc-cache -fv

# Completion message
echo "Iosevka Nerd Font installed successfully!"

