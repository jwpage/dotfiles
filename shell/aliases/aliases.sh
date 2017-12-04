alias ll='ls -l'
alias dc='cd'
alias ..='cd ..'
alias history='fc -l 1'
alias sl='ls'
alias php56='sudo brew services stop php71; brew unlink php71; brew link php56; sudo brew services start php56; valet install'
alias php71='sudo brew services stop php56; brew unlink php56; brew link php71; sudo brew services start php71; valet install'

notify() {
    msg=${1:=Done}

    osascript -e "display notification \"$msg\" with title \"Notification\""

    (curl -X POST -H "Accept: application/json" -H "Content-type: application/json" \
      -d "{\"value1\": \"$msg\"}" \
        'https://maker.ifttt.com/trigger/ios_push/with/key/MnW8Y6xzA1GQWotOIVOi2' \
          >/dev/null 2>&1 &)
    say "$msg"
}

lsbucket() {
    aws s3 ls ${1} --recursive --summarize --human-readable > ${1}.txt
}   

# source dotfiles
reload() {
  source $HOME/.zshrc &&
  echo "Your dot files are now \033[1;32msourced\033[0m."
}
