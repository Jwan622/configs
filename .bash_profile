export PATH="$HOME/bin:$PATH"
export PATH=/usr/local/share/npm/bin:$PATH

export EDITOR="/usr/local/bin/atom --wait"

eval "$(rbenv init -)"

# Take you to the dir of a file in a gem. e.g. `2gem rspec`
2gem () {
  cd "$(dirname $(gem which $1))"
}

#Rake aliases
alias yolo="rake db:drop && rake db:create && rake db:migrate && rake db:seed"
alias yolot="rake db:drop && rake db:create && rake db:migrate && rake db:seed && rake test"
alias rr="rake routes"
alias rdm="rake db:migrate"
alias rds="rake db:seed"

# alias rdm="rake db:migrate"
# alias rdd="rake db:drop"
# alias rdc="rake db:create"
# alias rds="rake db:seed"

alias rt="rake test"
alias bert="bundle exec rake test"
alias bertt="bundle exec rake test TEST="

#rspec aliases
alias ber="bundle exec rspec"

# Node aliases
alias ns="node start"
alias nt="node test"
alias nrp="node run protracter"

# Git aliases
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias ga="git add -A"
alias gh="git hist"
alias gco="git commit -m"
alias gm="git merge"
alias gp="git pull"
alias gcm="git checkout master"

alias gho="git push origin"
alias ghu="git push upstream"
alias glo="git pull origin"
alias glu="git pull upstream"

alias glog='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'

# Jekyll aliases
alias js="jekyll server"
alias jb="jekyll build"

# Heroku yolo
alias hyolo="heroku pg:reset DATABASE && heroku run rake db:migrate && heroku run rake db:seed"

#Directory aliases for Turing
alias turing="cd ~/Dropbox/programming/turing"
alias freelance="cd ~/Desktop/freelance_work"
alias arthouse="cd ~/Desktop/freelance_work/arthousecoop"
alias journal="cd ~/Dropbox/personel_various/Stuff/Journal"
alias programming="cd ~/Desktop/programming"

#See SystemFiles
alias bash_profile="atom ~/.bash_profile"
alias vimrc="atom ~/.vimrc"

#rails aliases
alias saob="save_and_open_branch"
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

# give the fullpaths of files passed in argv or piped through stdin
function fullpath {
  ruby -e '
    $stdin.each_line { |path| puts File.expand_path path }  if ARGV.empty?
    ARGV.each { |path| puts File.expand_path path }         unless ARGV.empty?
  ' "$@"
}

# Enable git's tab-completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# Prompt
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  function prompt_segment {
    # for colours: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors
    # change the 37 to change the foreground
    # change the 45 to change the background
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2:-37};45m\]${1}\[\033[0m\]"
    fi
  }

  function build_mah_prompt {
    # time
    ps1="$(prompt_segment " \@ ")"

    # cwd
    ps1="${ps1} $(prompt_segment " \w ")"

    # git branch
    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]
    then
      ps1="${ps1} $(prompt_segment " $git_branch " 32)"
    fi

    # next line
    ps1="${ps1}\n\$ "

    # set prompt output
    PS1="$ps1"
  }

  PROMPT_COMMAND='build_mah_prompt'

##
# Your previous /Users/Jwan/.bash_profile file was backed up as /Users/Jwan/.bash_profile.macports-saved_2015-03-20_at_13:22:50
##

# MacPorts Installer addition on 2015-03-20_at_13:22:50: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH="/usr/local/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave

export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
