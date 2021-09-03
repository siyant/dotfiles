# ----------------------
# Git Aliases
# from https://jonsuh.com/blog/git-command-line-shortcuts/
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbdo='git push origin --delete' # delete branch from origin
alias gbn='git checkout -b' # new branch
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gds='git diff --staged'
alias gf='git fetch'
alias gfr='git fetch && git rebase'
alias gi='git init'
alias gl='git log --graph --oneline --decorate --all'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gpu='git push'
alias gpusu='git push --set-upstream origin $(git branch --show-current)' 
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias grsh='git reset HEAD'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
alias gus='git restore --staged'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }


# ----------------------
# ls Aliases
# ----------------------
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls -CF'
