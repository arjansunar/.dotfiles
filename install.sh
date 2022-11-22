# install nix package manager 
sh <(curl -L https://nixos.org/nix/install) --no-daemon

# source nix 
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages from nix 
nix-env -iA \
    nixpkgs.zsh \
    nixpkgs.antibody \
    nixpkgs.git \
    nixpkgs.stow \
    nixpkgs.yarn \

# stow dotfiles
stow zsh
stow nvm

# add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells

# add zsh as default shell 
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh