find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch="detached"
    fi
    git_branch=" $branch"
  else
    git_branch=""
  fi
}

find_git_dirty() {
  git_clean=""
  git_dirty=""
  local status=$((git status --porcelain) 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty=$git_branch
  else
    git_clean=$git_branch
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"

export PS1="\n\[$bakblk\] \u \[$txtcyn\]\W\[$txtgrn\]\$git_clean\[$txtred\]\$git_dirty \[$txtrst\] "
