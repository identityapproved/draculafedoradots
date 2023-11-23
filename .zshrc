# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/usr/bin/nvim"
export GOPATH="$HOME/go"

ZSH_THEME="random"

zstyle ':omz:update' mode auto      # update automatically without asking

HIST_STAMPS="dd.mm.yyyy"

# Custom plugins
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
# https://github.com/zshzoo/cd-ls
# https://github.com/alexiszamanidis/zsh-git-fzf
# https://github.com/jeffreytse/zsh-vi-mode
# https://github.com/djui/alias-tips
# https://github.com/thirteen37/fzf-alias
plugins=(git gitignore dnf web-search pip python zsh-syntax-highlighting zsh-autosuggestions docker docker-compose zsh-vi-mode yarn tmux cd-ls zsh-git-fzf zsh-wakatime alias-tips ufw themes fzf-alias)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias vi="nvim"
alias zshconfig="nvim ~/.zshrc"
alias tmuxconfig="nvim ~/.config/tmux/tmux.conf"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
