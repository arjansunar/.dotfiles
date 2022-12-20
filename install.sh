# install nix package manager 
# curl -L https://nixos.org/nix/install | sh

# # source nix 
# . ~/.nix-profile/etc/profile.d/nix.sh

# install packages from nix 
nix-env -iA \
    nixpkgs.fish \ 
    nixpkgs.git \
    nixpkgs.stow \
    nixpkgs.yarn \
    nixpkgs.neovim \
    nixpkgs.tmux \
    nix-env -iA nixpkgs.exa \

    # nixpkgs.zsh \

# stow dotfiles
stow zsh
stow nvm
stow tmux

# add fish to valid login shells 
command -v fish | sudo tee -a /etc/shells

# add fish as default shell 
sudo chsh -s $(which fish) $USER

# install fisher (package manager)
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

