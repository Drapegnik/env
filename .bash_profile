source ~/.profile

# common alias
alias sr.='source ~/.bash_profile'
alias pd='pwd'
alias hy='history'
alias ll='ls -la'
alias cdd='cd ~/Desktop'

# `go` override
alias golang='command go'

# git alias
alias gs='git status --short'
alias gss='git status'
alias ga='git add'
alias gal='git add -A'
alias gb='git branch'
alias gr='git-recent'
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push'
alias gpf='git push -f'
alias gpu='git push -u origin HEAD'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gd='git diff'
alias go='git checkout'
alias gu='git undo'
alias gl='git log --oneline --graph --decorate -10 $*'
alias gll='git log --oneline --graph --decorate $*'
alias gml='git log --oneline --graph --all --decorate -10 $*'
alias grb='git rebase'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias grh='git reset --hard'
alias gst='git stash --save'
alias gstp='git stash pop'
alias gstl='git stash list'
gst-apply() {
  git stash apply stash@{$1}
}
gst-drop() {
  git stash drop stash@{$1}
}

# npm
alias npm-lsg='npm list -g --depth 0'

# hackellstack
alias sb='stack build --fast --file-watch'
# stack new with params
sn() {
  stack new $1 ~/.stack/templates/empty.hsfiles -p 'path:rsschool-fp'
}

# js
alias fixmd='prettier --write $(find . -name "*.md" ! -path "*node_modules*")'
alias parceldev='node ~/projects/drapegnik/parcel/packages/core/parcel/lib/cli.js'

# the fuck config
eval $(thefuck --alias)

# Shortcut function for creating custom git.io links.
# gitlink https://github.com/Drapegnik jsx
# See https://blog.github.com/2011-11-10-git-io-github-url-shortener
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

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# exercism bash-completion
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

# bash vars
export HISTTIMEFORMAT='%d/%m/%y %T -> '

# cli prefix format
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

# nvm
export NVM_DIR=~/.nvm # don't forget mkdir ~/.nvm
source $(brew --prefix nvm)/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# node
export NODE_ENV=development

# haskell stack packages
export PATH=$PATH:~/.local/bin

# custom scripts
export PATH=$PATH:~/bin

# golang
export GOPATH=$HOME/workspace/go

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/Cellar/python3/3.7.2_2/Frameworks/Python.framework/Versions/3.7/bin/python3
export WORKON_HOME=~/workspace/python/envs/
source /usr/local/bin/virtualenvwrapper.sh
