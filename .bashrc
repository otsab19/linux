# .bashrc
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1='$(parse_git_branch)\[\e[1;36m\]\d \[\e[1;30m\]\t \[\e[1;33m\]\u@\[\e[1;35m\]\h:\w\$ \[\e[0;32m\]\$ '
export JAVA_HOME="/usr/java/latest"
export ANDROID_HOME=/home/otsab/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
alias ssh-aws='ssh otsav@ec2-13-250-16-26.ap-southeast-1.compute.amazonaws.com'
export EDITOR = nvim

export tPGPASSWORD='Jobdata_admin123#'
alias ssh-google='ssh -i ~/.ssh/google_compute_engine g070bct548@35.227.75.193'
