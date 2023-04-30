# dotfiles
files for environment setup

## Installation List

- terminal app (windows terminal for windows, iterm for mac)
- zsh
- neovim
- node
- python3 and pip3
- fzf
- fd

ensure this `dotfiles` folder is in your root user directory

## ZSH
1. sudo apt-get install zsh
1. sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
1. git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
1. ZSH_THEME="powerlevel10k/powerlevel10k"
1. restart terminal
1. git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
1. git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

## NeoVim
TODO

### Plugins for NeoVim if in a constrained environment
TODO
