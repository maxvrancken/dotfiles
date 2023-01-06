# dotfiles
files for environment setup

ensure this `dotfiles` folder is in your root user directory

## Bash
1. Create `.bashrc` at your root user directory if it doesn't already exist
1. Open `.bashrc` and Paste in `. ~/dotfiles/bash/.bashrc`
1. Save and exit the file
1. Source `.bashrc`

## NeoVim
1. Inside your `.config/nvim` folder, create a new `init.vim` file (create dirs if they don't exist).
1. Open `init.vim` and paste in `source ~/dotfiles/nvim/init.vim`
1. Save and source the file
1. Run `:PlugInstall`

### Plugins for NeoVim if in a constrained environment
TODO
