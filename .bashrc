# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#Powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi

export WORKON_HOME=$HOME/.virtualenvs
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source /usr/bin/virtualenvwrapper.sh 
source ~/.autoenv/activate.sh

#OpenDaylight development
export MAVEN_OPTS='-Xmx1048m -XX:MaxPermSize=512m'
alias mvnSkipTest='mvn clean install -DskipTests'
alias mvnSkipTestOffline='mvn clean install -DskipTests -nsu -o'
#alias startKaraf

#Dirs
alias devel='cd ~/Documents/devel'
alias ll='ls -lrta'
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"
alias dotfiles config='/usr/bin/git --git-dir=/home/rnoriega/.dotfiles/ --work-tree=/home/rnoriega'

# Systemctl
alias sdisable=' sudo systemctl disable $@'
alias senable='sudo systemctl enable $@'
alias srestart='sudo systemctl restart $@'
alias sstart='sudo systemctl start $@'
alias sstatus='sudo systemctl status $@'
