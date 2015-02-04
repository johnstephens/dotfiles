## Simple Prompt
 #
function prompt
{
export PS1="
\t \W
] "
}
prompt
test -r /sw/bin/init.sh && . /sw/bin/init.sh

## Editor
 #
export EDITOR="edit"

## Aliases
 #
alias ls="ls -F"
alias t='todo.sh'
alias vi='mvim'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

## Extract anything
 # [avalonstar.com: the blog](http://feeds.feedburner.com/~r/avalonstar/~3/262830517/)
 #
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

## RVM
 #

## Apache + MySQL + PHP Server
 #
export PATH="/usr/local/mysql/bin:$PATH"
alias ampon="sudo /usr/local/mysql/support-files/mysql.server start && sudo apachectl start;"
alias ampoff="sudo /usr/local/mysql/support-files/mysql.server stop && sudo apachectl stop;"

## Node.js stuff
 #
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH=./node_modules/.bin:$PATH
alias express='/usr/local/bin/express'
alias nodemon='/usr/local/bin/nodemon'
[[ -s /Users/john/.nvm/nvm.sh ]] && . /Users/john/.nvm/nvm.sh # This loads NVM

## RVM
 #

## Homebrew
 #
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

## Use PHP 5.6 Stable from http://php-osx.liip.ch/
 #
export PATH=/usr/local/php5/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
