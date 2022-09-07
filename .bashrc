# MISC
PATH="$PATH:$HOME/.local/bin/"
PS1="\[\e[94m\]\w \[\e[39m\]$ "
# FUNCTIONS
cd(){
    builtin cd "$@" && ls -F
}
man(){
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}
# ALIASES
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias x="7z x"
alias rm="trash"
