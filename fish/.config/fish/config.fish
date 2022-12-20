# gretting message 
set -U fish_greeting ""

# aliases 
alias ls="exa -l -g --icons"
# open vpn aliases
alias vpn="openvpn3"
alias vpn-start="openvpn3 session-start --config $HOME/Documents/vpn-settings/arjan.ovpn"
alias vpn-close="openvpn3 session-manage -D --config $HOME/Documents/vpn-settings/arjan.ovpn"

# deno 
export DENO_INSTALL="/home/daaka/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# cargo 
export PATH="$HOME/.cargo/bin:$PATH"








# pnpm
set -gx PNPM_HOME "/home/daaka/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
