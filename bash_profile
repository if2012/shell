# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

#modify the command prompt
#PS1="[Linux \`pwd\`]\$"
[ "$PS1" = "\\s-\\v\\\$ " ] && PS1="[\u@\h \w]\\$ "

export PATH
EDITOR=vim; export EDITOR
