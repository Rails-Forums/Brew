# Brew setup
#### This script installs all necessary requirements for web development. This script also sets up your dotfiles.
#### Also when oh-my-zsh is installed type exit and the script will continue.

## Requirements
#### Mac Os
* macOS Mojave
* macOS Catalina
* macOS BigSur
* macOs Monterey
* macOs Ventura
## Install
#### This script is for the m1 macs.
Open termnial
Go to launchpad click Other and click terminal

Download the script
```
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/brewinstallm1.sh
chmod 755 ./brewinstallm1.sh
./brewinstallm1.sh
```
#### This script is for intel macs.
Open termnial
Go to launchpad click Other and click terminal

Download the script
```
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/brewinstallintell.sh
chmod 755 ./brewinstallintell.sh
./brewinstallintell.sh
```
#### This script is for just YOUR user MacOs.
Open termnial
Go to launchpad click Other and click terminal

Download the script
```
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/brewinstalllocal.sh
chmod 755 ./brewinstalllocal.sh
./brewinstalllocal.sh
```


## What it installs
#### Apps
* Atom
* Iterm2
* VsCode
#### Dependencies
* gcc
* git
* openssl
* rcm
* reattach to user namespace
* the_silver_searcher
* tmux
* vim
* watchman
* zsh
* luarocks
* railway
* heroku
* parity
* gh
* libvips
* libyaml
* coreutils
* postgres
* redis
* rbenv
