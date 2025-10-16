# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Provide most useful parts of oh-my-zsh
autoload -Uz compinit && compinit

# completion is case-insensitive, always show all possible completions
# bind "set completion-ignore-case on"
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Add most common/useful git shortcuts
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gcam="gaa && git commit"
alias gd="git diff"
alias gl="git pull"
alias gla="git pull --all"
alias glo="git log --oneline --decorate --color"
alias glog="git log --oneline --decorate --color --graph"
alias gm="git merge"
alias push="git push"
alias gr="git remote"
alias grv="git remote -v"
alias gst="git status"
alias gch="git checkout"
alias gsq="git rebase -i"
alias reloadshell="source ~/.zshrc"
alias sos="gaa && git commit -m 'sanity save'"
alias gcl="gaa && git commit -m 'clean'"
alias sosp="sos && git push"
alias prem="gaa && git commit -m '*** PreMerge ***'"
alias pipline="gaa && git commit -m 'Fix for pipeline'"
# specific to Avail/avail-ui-sp repo branches
alias squash="gsq development"
alias gup="gch development && gl"
alias gupm="gup && gch - && gm development"
# specific to Avail/availkit-js repo branches
alias ak-squash="gsq develop"
alias ak-gup="gch develop && gl"


# Update Homebrew
alias kegger="brew update && brew upgrade"

alias enableIndexing="sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"
alias disableIndexing="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"
alias NMRefresh="echo ' ***** DELETING package-lock *****' &&\
rm -rf package-lock.json &&\
echo '  ***** package-lock DELETED *****' &&\
echo '   ***** DELETING node_modules *****' &&\
rm -R node_modules &&\
echo '   ***** node_modules DELETED *****' &&\
echo ' * Clearing cache' with --force &&\
npm cache clean --force &&\
echo '    ***** installing... *****' &&\
npm install &&\
 echo '     ***** INSTALL COMPLETE *****'"

# Made specifically for Avail web-ui-spa
alias NMReloadLegacy="npm login &&\
echo 'DELETING package-lock' &&\
rm -rf package-lock.json &&\
echo ' * package-lock DELETED' &&\
echo '* DELETING node_modules ' &&\
rm -rf node_modules &&\
echo ' * node_modules DELETED' &&\
nvm use 16.10 &&\
echo ' * Clearing cache' &&\
npm cache clean --force &&\
echo '* Installing with legacy-peer-deps flag' &&\
npm install --legacy-peer-deps &&\
echo ' * INSTALL COMPLETE *****'"

# Made specifically for Avail web-ui-spa
alias NMReloadForce="npm login &&\
echo 'DELETING package-lock' &&\
rm -rf package-lock.json &&\
echo ' * package-lock DELETED' &&\
echo '* DELETING node_modules ' &&\
rm -rf node_modules &&\
echo ' * node_modules DELETED' &&\
nvm use 16.10 &&\
echo ' * Clearing cache' &&\
npm cache clean --force &&\
echo '* Installing with legacy-peer-deps flag' &&\
npm install --force &&\
echo ' * INSTALL COMPLETE *****'"

# Made specifically for Avail web-ui-spa
alias NMReload="npm login &&\
echo 'DELETING package-lock' &&\
rm -rf package-lock.json &&\
echo ' * package-lock DELETED' &&\
echo '* DELETING node_modules ' &&\
rm -rf node_modules &&\
echo ' * node_modules DELETED' &&\
nvm use 16.10 &&\
echo ' * Clearing cache' &&\
npm cache clean --force &&\
echo '* Installing ' &&\
npm install &&\
echo ' * INSTALL COMPLETE *****'"

###############################################################################
# Custom zsh prompt -- run this fn before each prompt to get tech info

autoload -Uz vcs_info
autoload -U colors && colors

precmd() { vcs_info }
setopt prompt_subst
PS1='%{$fg[red]%}${vcs_info_msg_0_}%{$reset_color%} %3~ '

plugins=(virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

setopt autocd           # If cmd not found, try "cd cmd"
setopt histverify       # Confirm history editing

# Don't close shell on C-D
set -o ignoreeof


# Useful aliases
alias tree="tree --noreport -C -I '__pycache__|node_modules|venv'"
alias ls="ls -F"
alias l="ls -lah"


############################################################################
# Career Pathways

## Backend
alias vb-back-start1="source venv/bin/activate && docker compose up"
alias vb-refresh="uvicorn main:app --reload"
alias vb-back-start2="source venv/bin/activate && vb-refresh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


############################################################################
# Teal Health

## Storybook repo
alias th-storybook="pnpm run storybook-nextjs"
alias avadak="node /Users/jayvigilla/Projects/Work/TealHealth/admin-scripts/admin-portal/delete-user.js _ true"
alias avada="node /Users/jayvigilla/Projects/Work/TealHealth/admin-scripts/admin-portal/delete-user.js"
alias logAdmin="node /Users/jayvigilla/Projects/Work/TealHealth/admin-scripts/admin-portal/loginToAdminPortal.js"

# pnpm
export PNPM_HOME="/Users/jayvigilla/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# Teal Health
eval "$(/Users/jayvigilla/.local/bin/mise activate zsh)"
alias avadak="node /Users/jayvigilla/Projects/Work/Teal/admin-scripts/admin-portal/delete-user.js _ true"
alias avada="node /Users/jayvigilla/Projects/Work/Teal/admin-scripts/admin-portal/delete-user.js"
alias logAdmin="node /Users/jayvigilla/Projects/Work/Teal/admin-scripts/admin-portal/loginToAdminPortal.js"
# clean Teal automated emails and downloaded cypress error screenshots
alias scourgify="bash ~/Scripts/run_daily_cleanup.sh"
