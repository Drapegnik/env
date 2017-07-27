
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

# the fuck config
eval $(thefuck --alias)

# git branches and complete
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\u@\h:\w$(__git_ps1)$ '

# node
export NODE_PATH=.
export NODE_ENV=development