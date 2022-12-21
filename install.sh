# install nix package manager 
curl -L https://nixos.org/nix/install | sh

# # source nix 
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages from nix 
nix-env -iA \
    nixpkgs.fish \
    nixpkgs.stow \
    nixpkgs.yarn \
    nixpkgs.tmux \
    nixpkgs.exa \
    nixpkgs.bat \
    nixpkgs.gdu \
    nixpkgs.lazygit 

# stow dotfiles
stow tmux
stow fish

# add fish to valid login shells 
command -v fish | sudo tee -a /etc/shells

# add fish as default shell 
sudo chsh -s $(which fish) $USER

# install fisher (package manager)
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# install neovim 8.0 and astrovim 
