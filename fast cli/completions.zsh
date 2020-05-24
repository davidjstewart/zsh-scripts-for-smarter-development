#!/bin/zsh

# to get completions for fast sub-commands, add 'source ~/custom-commands/completions.zsh' to bottom of .zshrc
_fast() {
    compadd openFoobarPipeline help menu
}
compdef _fast fast
