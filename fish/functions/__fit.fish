# Log
set _git_log_oneline_format '%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'

# Status
set _git_status_ignore_submodules 'none'

alias g='git'

# Branch (b)
alias gb='git branch'
alias gbc='git checkout -b'

# Commit (c)
alias gc='git commit --verbose'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcp='git cherry-pick --ff'
alias gcs='git show'

# Fetch (f)
alias gpl='git pull'

# Index (i)
alias gia='git add'

# Log (l)
alias glo='git log --topo-order --pretty=format:"$_git_log_oneline_format"'
alias glg='git log --topo-order --all --graph --pretty=format:"$_git_log_oneline_format"'

# Merge (m)
alias gm='git merge'

# Push (p)
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gpc='git push --set-upstream origin (git_current_branch 2> /dev/null)'
alias gpp='git pull origin (git_current_branch 2> /dev/null)'

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Stash (s)
alias gs='git stash'
alias gsx='git stash drop'
alias gsl='git stash list'
alias gsp='git stash pop'

# Working Copy (w)
alias gws='git status --ignore-submodules=$_git_status_ignore_submodules --short'
alias gwS='git status --ignore-submodules=$_git_status_ignore_submodules'
alias gwd='git diff --no-ext-diff'
alias gwC='git clean -f'
