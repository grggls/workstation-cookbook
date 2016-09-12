export PATH="/buzzfeed/buzzbrew/bin:$PATH"
export PATH="/buzzfeed/perl/bin:$PATH"
export PATH="/buzzfeed/buzzbrew/share/python:$PATH"

export EDITOR="/usr/bin/vim"

# specify the correct python and virtualenv binaries
export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python"
export VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"

# load virtualenvwrapper for python (after custom PATHs)
venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
    # make pip respect virtualenv
    export PIP_RESPECT_VIRTUALENV=true
    # make pip respect virtualenvwrapper
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
fi


export PYTHONDONTWRITEBYTECODE=true

keyfile=~/.ssh/id_rsa
[[ -z $(ssh-add -L | grep $keyfile) ]] && ssh-add $keyfile

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

complete -C aws_completer aws

##
# Your previous /Users/gregorydamiani/.bash_profile file was backed up as /Users/gregorydamiani/.bash_profile.macports-saved_2014-05-13_at_17:11:36
##

# MacPorts Installer addition on 2014-05-13_at_17:11:36: adding an appropriate PATH variable for use with MacPorts.
export PATH=~/bin:/opt/chefdk/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/buzzfeed/bin:$PATH"
export PATH="/buzzfeed/local/bin:$PATH"
export PATH=/Applications/GoogleAppEngineLauncher.app/Contents/Resources/GoogleAppEngine-default.bundle/Contents/Resources:$PATH
export PATH="/usr/local/packer:/usr/local/terraform:$PATH"
#export PATH="/Users/gregdamiani/.chefdk/gem/ruby/2.1.0/bin:$PATH"
export CHEF=/opt/buzzfeed/chef

source ~/git-prompt.sh

alias 'gb'='git branch'
alias 'gc'='git checkout'
alias 'gcb'='git checkout -b'
alias 'gd'='git diff'
alias 'gf'='git fetch'
alias 'gl'='git log'
alias 'gp'='git push --set-upstream origin'
alias 'gpu'='git pull'
alias 'gr'='git rebase'
alias 'gs'='git status'
alias 'kc'='kitchen converge'
alias 'kd'='kitchen destroy'
alias 'kl'='kitchen login'
alias 'ks'='kitchen list'
alias 'kt'='kitchen test'
alias 'kv'='kitchen verify'
alias 'chefb'='git clone git@github.com:buzzfeed/chef.git $b && cd $b && git checkout -b $b && git branch --set-upstream-to=origin/$b $b'

eval $(thefuck --alias)
export GOPATH=$HOME
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

GPG_TTY=$(tty)
export GPG_TTY

eval $(gpg-agent --daemon)
