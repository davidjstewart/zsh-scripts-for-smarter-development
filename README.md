# zsh-scripts-for-smarter-development
Collection of zsh scripts for smarter and more productive programmers

## useRepoJsonFileToLoadTerminalEnvVars.zsh
I have installed the Intellij plugin EnvFile to load env vars into the Run/Debug configurations using a JSON file. 
This does not load env vars into the system terminals. I achieved this using a small script that runs when a terminal is opened within Intellij.

### Pre-Requisites
1. Install jq for terminal

### Install
1. Put the below code into your .zshenv
