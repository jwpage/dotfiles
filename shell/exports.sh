path_add() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="${PATH:+"$PATH:"}$1"
  fi
}

export DEVELOPMENT="true"
export DOTFILES=~/.dotfiles
export GREP_OPTIONS='--color=auto'
export PATH=$HOME/bin:/usr/local/bin:$PATH

path_add "/usr/local/sbin"
path_add "/usr/local/Cellar/coreutils/8.21/libexec/gnubin"
path_add "/usr/local/Cellar/ruby/2.1.0/bin"
path_add "/Users/johnson/.composer/vendor/bin"
