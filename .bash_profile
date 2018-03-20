source ~/.profile

# common alias
alias sr.="source ~/.bash_profile"
alias pd="pwd"
alias hy="history"
alias ll="ls -la"

# git alias
alias got='git '
alias get='git '
alias gs='git status --short'
alias gss='git status '
alias ga='git add '
alias gal='git add -A'
alias gb='git branch '
alias gc='git commit '
alias gp='git push '
alias gpf='git push -f'
alias gpu='git push -u origin HEAD'
alias gpl='git pull '
alias gd='git diff '
alias go='git checkout '
alias gu='git undo '
alias gl="git log --oneline --graph --decorate -10 $*"
alias gll="git log --oneline --graph --decorate $*"
alias gml="git log --oneline --graph --all --decorate -10 $*"

# js
alias fixmd='prettier --write $(find . -name "*.md" ! -path "*node_modules*")'

# the fuck config
eval $(thefuck --alias)

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# cli prefix format
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

# nvm
export NVM_DIR=~/.nvm # don't forget mkdir ~/.nvm
source $(brew --prefix nvm)/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# node
export NODE_PATH=.
export NODE_ENV=development

# Shortcut function for creating custom git.io links.
# See https://blog.github.com/2011-11-10-git-io-github-url-shortener/
gitlink() {
  # The first argument is the URL to shorten
  VALUES="-F \"url=$1\""

  # If a custom short code was requested, set the form value.
  if [ -n "$2" ]; then VALUES="$VALUES -F \"code=$2\""; fi

  # Send the request to GitHub and grab the Location header.
  RESPONSE=$(eval "curl -i https://git.io $VALUES 2>&1" | grep Location)

  # Remove the header name and echo only the generated short link.
  echo "${RESPONSE//Location: /}"
}
