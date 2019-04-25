# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# FUNCTIONS
findw() {
	find -iname "*$1*"
}

# ALIASES
alias python=python3
alias lr='ls -hartl'
alias g='grep -i'
alias get='curl -OL'
alias gitinit='git init; echo .env > .gitignore'
# Customize prompt to show only working directory
PS1='[\W]\$ '

# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.sh
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
