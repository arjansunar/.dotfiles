#!/bin/bash

# Check if the OS is Ubuntu
if [ -f /etc/os-release ] && grep -iq "ubuntu" /etc/os-release; then
  # Run commands for Ubuntu OS

  # Install ghostty via snap
  snap install ghostty --classic

  # Add fish to valid login shells
  command -v fish | sudo tee -a /etc/shells

  # Set fish as default shell
  sudo chsh -s $(which fish) $USER

  # Setup rust
  echo "Installing rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  # Install Cargo packages
  cargo install cargo-binstall
  cargo binstall eza zellij bat bob-nvim kanata just starship zoxide mise

  # Install Mise packages
  mise use go node python@3.12 -g

  # Install Go packages
  go install github.com/jesseduffield/lazygit@latest

  # Stow dotfiles
  stow fish
  stow kanata
  stow nvim
  stow zellij
  stow mise

else
  echo "This script is only compatible with Ubuntu."
fi
