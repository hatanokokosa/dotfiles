if status is-interactive
    # Commands to run in interactive sessions can go here
end

thefuck --alias | source
fastfetch

# Fcitx5
set -Ux XMODIFIERS "@im=fcitx5"
set -Ux GTK_IM_MODULE fcitx5
set -Ux QT_IM_MODULE fcitx5
set -Ux SDL_IM_MODULE fcitx5

# SSH
if not pgrep -u (whoami) ssh-agent >/dev/null
    eval (ssh-agent -c)
    set -Ux SSH_AUTH_SOCK (ssh-agent -c | awk '/SSH_AUTH_SOCK/ {print $NF}' | tr -d ';')
    set -Ux SSH_AGENT_PID (ssh-agent -c | awk '/SSH_AGENT_PID/ {print $NF}' | tr -d ';')
end

zoxide init fish | source

# Alias
alias q='exit'
alias ff='fastfetch'
alias lol='lolcat'
alias ffl='fastfetch |lolcat'
alias cat='bat'
alias grep='rg'
alias g='rg'
alias sd='sudo'
alias v='nvim'
alias py='python'
alias c='clear'
alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -la'
alias lt='lsd --tree'
alias ps='procs'
alias du='dust'
alias yz='yazi'
alias tree='broot'
alias up='paru -Syyu'
alias p='paru'
alias ist='paru -S'
alias rmv='paru -Rs'
alias f='fuck'
alias F='fuck'
alias vim='nvim'
alias vide='neovide'
alias vi='vim'

# PATH
set -gx PATH $PATH /home/hatano/.lmstudio/bin
set -Ux PATH $HOME/.cargo/bin $PATH
