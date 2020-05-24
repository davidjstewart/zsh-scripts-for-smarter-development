#!/bin/zsh

function menu {
    echo "================="
    echo "Custom Commands"
    echo  "================="
    echo "1) openFoobarPipeline"
    echo "2) quit menu"
    echo -e "Enter your selection here and hit <return>"
    read answer
    case "$answer" in
        1) openFoobarPipeline;;
        2) ;;
    esac
}
