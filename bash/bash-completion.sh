# To install:
# brew install bash bash-completion
# curl -o ~/.git-prompt.sh \
#     https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
#
# ... and add the following line to your ~/.bash_profile:
#
# source ~/.git-prompt.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
