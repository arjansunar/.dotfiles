# gretting message 
set -U fish_greeting "🐟"

# aliases 
alias ls="exa -l -g --icons"
# open vpn aliases
alias vpn="openvpn3"
alias vpn-start="openvpn3 session-start --config $HOME/Documents/vpn-settings/arjan.ovpn"
alias vpn-close="openvpn3 session-manage -D --config $HOME/Documents/vpn-settings/arjan.ovpn"

if status is-interactive
    # Commands to run in interactive sessions can go here
end