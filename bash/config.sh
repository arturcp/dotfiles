# Editor
export EDITOR="sublime -w"

# Git
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=auto

# History
export HISTCONTROL="ignoreboth:erasedups" # Erase duplicates in history
export HISTSIZE=10000 # Store 10k history entries
shopt -s histappend # Append to the history file when exiting instead of overwriting it


# Customize the terminal input line
prompt() {
  # PS1="${CYAN}\w ${MAGENTA}(\$(rb-version))${GREEN}\$(__git_ps1)\n${RED}$ ${NORMAL}"
  PS1="${CYAN}\w${GREEN}\$(__git_ps1) ${RED}$ ${NORMAL}"
}

PROMPT_COMMAND=prompt

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
