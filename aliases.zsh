# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias compile="commit 'compile'"
alias version="commit 'version'"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias lara="sites && cd laravel/"
alias docs="lara && cd docs/"

# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"
alias serve="php artisan serve"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="php -d memory_limit=-1 /opt/homebrew/bin/composer"

# JS
alias NMRefresh="echo 'DELETING package-lock' && rm -rf package-lock.json && echo ' * package-lock DELETED' &&  echo 'DELETING node_modules ' && rm -rf node_modules && echo ' * node_modules DELETED' && echo 'Installing...' && npm install && echo ' * INSTALL COMPLETE *****'"
alias watch="npm run watch"

# Docker
alias docker-composer="docker-compose"

# SQL Server
alias mssql="docker run -e ACCEPT_EULA=Y -e SA_PASSWORD=LaravelWow1986! -p 1433:1433 mcr.microsoft.com/mssql/server:2017-latest"

# Git
alias gaa="git add --all"
alias gst="git status"
alias gb="git branch"
alias gch="git checkout"
alias gcam="gaa && git commit -m"
alias diff="git diff"

#   unused defaults
# alias amend="git add . && git commit --amend --no-edit"
# alias commit="git add . && git commit -m"
# alias resolve="git add . && git commit --no-edit"

#   commit
alias wip="gaa && git commit -m 'WIP'"
alias sos="gaa && git commit -m 'sanity save'"
alias gcl="gaa && git commit -m 'clean'"

#   push/pull
alias push="git push"
alias gl="git pull"
alias gla="git pull --all"

alias glo="git log --oneline --decorate --color"
alias glog="git log --oneline --decorate --color --graph"

alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias gpf="git push --force"
alias stash="git stash -u"
alias unstage="git restore --staged ."

alias squash="git rebase"

# Personal shortcuts
alias prem="gaa && git commit -m '*** PreMerge ***'"
alias pipline="gaa && git commit -m 'Fix for pipeline'"
alias sosp="sos && git push"

# Update Homebrew
alias kegger="brew update && brew upgrade"

alias enableIndexing="sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"
alias disableIndexing="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"