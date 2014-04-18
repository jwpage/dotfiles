alias ll='ls -l'
alias dc='cd'
alias ..='cd ..'
alias history='fc -l 1'
alias sl='ls'

# source dotfiles
reload() {
  source $HOME/.zshrc &&
  echo "Your dot files are now \033[1;32msourced\033[0m."
}
