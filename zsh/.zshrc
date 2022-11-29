# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add nix to zsh
. ~/.nix-profile/etc/profile.d/nix.sh;

# source antibody plugins 
source ~/.zsh_plugins.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases 
# open vpn aliases
alias -g vpn="openvpn3"
alias vpn-start="openvpn3 session-start --config $HOME/Documents/vpn-settings/arjan.ovpn"
alias vpn-close="openvpn3 session-manage -D --config $HOME/Documents/vpn-settings/arjan.ovpn"

# lazygit
alias -g lg="lazygit"
