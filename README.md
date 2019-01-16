# The right way to git dotfiles
## Configuration
    git init --bare
    alias config='/usr/bin/git --git-dir=$HOME/DotArchMac/ --work-tree=$HOME' (add this alias to .zshrc or .bashrc)
    zsh
    config config --local status.showUntrackedFiles no

## Usage example
    config add /path/to/file 
    config commit -m "A short message" 
    config push

[Original post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
