# custom-commands
A collection of useful zsh cli for ***fast*** developers

## Setup
1. Clone repo to home directory
2. Open a terminal and run the following command
```
$ cp ~/custom-commands/fast ~/bin
```
3. Ensure ```path+=$HOME/bin``` has been added to the .zprofile
4. Add the following line to the bottom of .zshrc  
```source ~/custom-commands/completions.zsh```

### Extra bash functions
Setup for some useful extra functions.
1. Add the following line to the bottom of .zshrc  
```source ~/custom-commands/ubiquitousCommands.zsh```

## Using
- cli
    1. All commands should be preceded by ```fast<space>```
    2. To see a list of available commands use ```fast -h``` or ```fast help```
- autocompletion
    1. If you have followed the instructions to add completions.zsh to your .zshrc file, you will be able to navigate available commands using arror keys after a double press of tab.
- menu
    1. Commands are avaiable for use via an interact menu after entering ```fast menu```
