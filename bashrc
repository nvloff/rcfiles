# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if type brew > /dev/null
then
  if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
  fi

  if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
  fi
fi

export TERM='xterm-256color'
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
source ~/.bundle.bash

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
