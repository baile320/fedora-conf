# .bash_profile
~/.bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

alias lr='ls -hartl'
alias g='grep -i'
alias get='curl -OL'

# Customize prompt to show only working directory
PS1='[\W]\$ '

# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.sh

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
