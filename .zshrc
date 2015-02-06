#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias vi='mvim'
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc'
#alias ls="ls -F"

## Apache + MySQL + PHP Server
 #
export PATH=/usr/local/php5/bin:$PATH # Use PHP 5.6 Stable from http://php-osx.liip.ch/
export PATH="/usr/local/mysql/bin:$PATH"
alias ampon="sudo /usr/local/mysql/support-files/mysql.server start && sudo apachectl start"
alias ampoff="sudo /usr/local/mysql/support-files/mysql.server stop && sudo apachectl stop"

## Node.js & NVM
 #
[[ -s /Users/john/.nvm/nvm.sh ]] && . /Users/john/.nvm/nvm.sh # This loads NVM

## RVM
 #
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
