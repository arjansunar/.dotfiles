# install nix package manager 
curl -L https://nixos.org/nix/install | sh

# # source nix 
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages from nix 
nix-env -iA \
    nixpkgs.fish \ # shell
    nixpkgs.stow \ # stowing packages
    nixpkgs.yarn \ # node package builder
    nixpkgs.tmux \ # terminal multiplexer
    nixpkgs.exa \  # better ls
    nixpkgs.bat \  # better cat
    nixpkgs.gdu \  # file explorer in terminal
    nixpkgs.lazygit \ # git actions from terminal

    # nixpkgs.zsh \

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