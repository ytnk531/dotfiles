ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"

setopt promptsubst

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Block completion call to redo them at once after load all of them.
#zinit ice blockf
zinit snippet OMZL::git.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZP::git
zinit snippet OMZP::aws
zinit snippet OMZT::robbyrussell
#zinit light denysdovhan/spaceship-prompt
#zinit wait lucid for \
#  zsh-users/zsh-autosuggestions \
#  lukechilds/zsh-nvm
zinit wait lucid for \
  atinit"zicompinit; zicdreplay"  \
  zdharma-continuum/fast-syntax-highlighting \
  OMZP::colored-man-pages \
  as"completion" \
  OMZP::docker/_docker \
  OMZP::docker-compose/_docker-compose

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=248"
# Spaceship prompt settings
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_PROMPT_ORDER=(
        time          # Time stamps section
        user          # Username section
        dir           # Current directory section
        host          # Hostname section
        jobs          # Background jobs indicator
        exit_code     # Exit code section
        char
)
SPACESHIP_RPROMPT_ORDER=(
        git           # Git section (git_branch + git_status)
        hg            # Mercurial section (hg_branch  + hg_status)
        package       # Package version
        node          # Node.js section
        ruby          # Ruby section
        elixir        # Elixir section
        xcode         # Xcode section
        swift         # Swift section
        golang        # Go section
        php           # PHP section
        rust          # Rust section
        haskell       # Haskell Stack section
        julia         # Julia section
        docker        # Docker section
        aws           # Amazon Web Services section
        venv          # virtualenv section
        conda         # conda virtualenv section
        pyenv         # Pyenv section
        dotnet        # .NET section
        ember         # Ember.js section
        kubectl       # Kubectl context section
        terraform     # Terraform workspace section
        exec_time
        line_sep      # Line break
        battery       # Battery level and status
        vi_mode       # Vi-mode indicator
)

# Alias
alias zshconfig="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias gits="git status"
alias awsume=". awsume"
alias dc='docker-compose'
alias d='docker'
alias rs='bin/rails server'
alias krs='kill `cat tmp/pids/server.pid`'
alias sq='bundle exec sidekiq -C config/sidekiq.yml'
alias be='bundle exec'
alias tm='tmux new -Asdefault'
alias vi='nvim'
alias vim='nvim'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
### End of Zinit's installer chunk
