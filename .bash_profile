export PATH="$HOME/bin:$PATH"
export PATH=/usr/local/share/npm/bin:$PATH

eval "$(rbenv init -)"

# Take you to the dir of a file in a gem. e.g. `2gem rspec`
alias glog='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'

#See SystemFiles
alias bash_profile="atom ~/.bash_profile"
alias vimrc="atom ~/.vimrc"

#rails aliases
alias rs="rails s"
alias rc="rails c"

# fancy ls command
# -l  long format
# -F  / after dirs, * after exe, @ after symlink
# -G  colorize
# -g suppress owner
# -o suppress group
# -h humanize sizes
# -q print nongraphic chars as question marks
alias l="ls -lFGgohq"

# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="/usr/local/bin:$PATH"

#git completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source /usr/local/opt/nvm/nvm.sh

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

source .bashrc
