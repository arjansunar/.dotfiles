#####################
# Custom functions
function source_venv
    set venv_path ".venv/bin/activate.fish"
    if test -f "$venv_path"
        source $venv_path
    end
end

function gch
    git checkout $( git branch | fzf | sed 's/.* //' | tr -d '[:space:]' )
end

# remote git PRs checkout
function grch
    gh pr list | fzf --preview "gh pr view {+1}" | awk '{ print $1}' | xargs -I {} gh pr checkout {}
end
####################

####################### 
# Abbreviations
#######################
# work
abbr --add dmr TAG=dev make restart
abbr --add dms TAG=dev make stop
# docker 
abbr dpr "docker system prune -f && docker volume prune -f"
abbr dlg docker container logs -f
####################### 
#/Abbreviations
#######################

# gretting message 
set -U fish_greeting ""

# source fish config
alias sof="source ~/.config/fish/config.fish"

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
alias ncd="source_venv && nvim ." # in current directory
alias rj="NVIM_APPNAME=Rjanidor nvim"
alias ch="NVIM_APPNAME=chad nvim"
alias lz="NVIM_APPNAME=Lazy nvim"
alias asn="NVIM_APPNAME=Astro nvim"


# lazygit alias 
alias gg="lazygit"
alias ld="lazydocker"

# work
alias dms-s="z main && TAG=dev APP_URL=http://dms-ar:8443/ make dev"
alias dms-c="z main && TAG=dev APP_URL=http://dms-ar:8443/ make stop"
alias dms-r="z main && dms-c && dms-s"

# zellij 
alias jel="zellij"

# cargo 
export PATH="$HOME/.cargo/bin:$PATH"

# nvim using bob nvim version manager
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# pnpm
set -gx PNPM_HOME "/home/rjan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Created by `pipx` on 2022-12-30 02:23:56
set PATH $PATH /home/rjan/.local/bin

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval (tmuxifier init - fish)

# go installation
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/go/"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"


# Set default editors
export VISUAL=nvim
export EDITOR="$VISUAL"

# direnv => take control of env variables
direnv hook fish | source
starship init fish | source
