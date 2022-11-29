# install nix package manager 
# curl -L https://nixos.org/nix/install | sh

# source nix 
# . ~/.nix-profile/etc/profile.d/nix.sh

# install packages from nix 
nix-env -iA \
    nixpkgs.zsh \
    nixpkgs.git \
    nixpkgs.stow \
    nixpkgs.yarn \
    nixpkgs.neovim \

# stow dotfiles
stow zsh
stow nvm

# add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells

# add zsh as default shell 
sudo chsh -s $(which zsh) $USER

