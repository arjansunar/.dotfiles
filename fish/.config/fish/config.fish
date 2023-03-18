# gretting message 
set -U fish_greeting ""

# aliases 
alias ls="exa -l -g --icons"
alias cl="clear"

# open vpn aliases
alias vpn="openvpn3"
alias vpn-s="openvpn3 session-start --config $HOME/Documents/work/vpn-settings/arjan.ovpn"
alias vpn-c="openvpn3 session-manage -D --config $HOME/Documents/work/vpn-settings/arjan.ovpn"

# nvim alias
alias vim="nvim"
alias nv="nvim"
alias vi="nvim"
# open nvim 
alias ncd="nvim ." # in current directory

# lazygit alias 
alias gg="lazygit"

# work
alias dms-s="z main && TAG=dev make dev"
alias dms-c="z main && TAG=dev make stop"
alias dms-r="z main && dms-c && dms-s"

# cargo 
export PATH="$HOME/.cargo/bin:$PATH"

# nvim using bob nvim version manager
export PATH="$HOME/.local/share/neovim/bin:$PATH"

# pnpm
set -gx PNPM_HOME "/home/rjan/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# Created by `pipx` on 2022-12-30 02:23:56
set PATH $PATH /home/rjan/.local/bin
