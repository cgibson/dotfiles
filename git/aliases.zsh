# # Use `hub` as our git wrapper:
# #   http://defunkt.github.com/hub/
# hub_path=$(which hub)
# if (( $+commands[hub] ))
# then
#   alias git=$hub_path
# fi

alias g='git'
alias gg='git grep --line-number'
alias gdf='git diff --patience --find-renames --find-copies-harder'