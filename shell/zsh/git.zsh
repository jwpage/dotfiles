_git_complete() {
    local CMD="$1"
    shift
    if type __git_complete &>/dev/null; then
        for ALIAS in "$@"; do
            __git_complete "$ALIAS" "_git_$CMD"
        done
    else
        complete -o bashdefault -o default -o nospace -F "_git_$CMD" "$@"
    fi
}
__git_complete diff gd gdc
__git_complete status gs
__git_complete checkout gco 
__git_complete commit gci
__git_complete branch gb
__git_complete push gp
__git_complete reset grh
