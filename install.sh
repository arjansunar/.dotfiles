snap install ghostty --classic

# add fish to valid login shells
command -v fish | sudo tee -a /etc/shells

# add fish as default shell
sudo chsh -s $(which fish) $USER

# setup rust
echo "Installing rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Cargo packages
cargo install cargo-binstall
cargo binstall eza zellij bat bob-nvim kanata just starship zoxide mise

# Mise packages
mise use go node python@3.12 -g

# Go packages
go install github.com/jesseduffield/lazygit@latest

# stow dotfiles
stow fish
stow kanata
stow nvim
stow zellij
