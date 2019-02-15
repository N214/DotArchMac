# The right way to git dotfiles
## Configuration
    git init --bare
    alias config='/usr/bin/git --git-dir=$HOME/DotArchMac/ --work-tree=$HOME' (add this alias to .zshrc or .bashrc)

    cfg_update() { 
              config commit -a -m "$1"
              config push
            }
    zsh
    config config --local status.showUntrackedFiles no

## Usage example host 1
    config add /path/to/file 
    config commit -m "A short message" 
    config push

    cfg_update "LazyCommit"

## Usage example host 2
    curl -Lks https://raw.githubusercontent.com/N214/DotArchMac/master/scripts/cfg-install | /bin/bash
[Original post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
