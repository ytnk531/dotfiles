export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

source ~/.zinit/bin/zinit.zsh

zinit ice blockf
zinit snippet OMZL::git.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::spectrum.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZP::git
#zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh" nocompile'!'
zinit light trapd00r/LS_COLORS
zinit cdclear -q 
setopt promptsubst
zinit snippet OMZT::robbyrussell

#zinit ice wait'0' for \
#  light-mode zsh-users/zsh-autosuggestions \
#  light-mode zdharma/fast-syntax-highlighting
zinit ice wait"!0" 
zinit light zsh-users/zsh-autosuggestions
zinit ice wait"!0" 
zinit light zdharma/fast-syntax-highlighting



[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

# If you come from bash you might have to change your $PATH.

ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# export ARCHFLAGS="-arch x86_64"

# system setting
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR=vim
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=248"
export MANPATH="/usr/local/man:$MANPATH"

# nvm setting
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH=$HOME/.nodebrew/current/bin:$PATH

# rbenv
eval "$(rbenv init -)"

# Alias
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias gits="git status"
alias awsume=". awsume"
alias gits='git status'
alias mrb='git for-each-ref --count 10 --sort=-committerdate refs/heads/ --format="%(committerdate) %(refname:short)"'
alias dc='docker-compose'
alias d='docker'
alias rs='bin/rails server'
alias krs='kill `cat tmp/pids/server.pid`'
alias sq='bundle exec sidekiq -C config/sidekiq.yml'
alias be='bundle exec'

