#!/bin/zsh
# This script is exported for use throughout the fast cli. 
# It can however be sourced in the .zshrc to make its convenient
# alias's available on all zsh shells

alias openWorkspace='cd ~/workspace'

# Will add new and overwrite existing env, aliases and functions. Deleted aliases and functions may not get flushed until terminal exited.
function restartZSH {
    source ~/.zshenv
    source ~/.zprofile
    source ~/.zshrc
}

alias restartShell=restartZSH
