# Brew setup
#### This script installs all necessary requirements for web development. This script also sets up your dotfiles.
#### Also when oh-my-zsh is installed type exit and the script will continue.

## Requirements
#### Mac Os
* macOS Mojave 10.14
* macOS Catalina 10.15
* macOS BigSur 11 
* macOs Monterey 12
* macOs Ventura 13
* macOs Sonoma 14

## Install
#### This script is for all Apple Silicon macs.
Open termnial
Go to launchpad click Other and click terminal

Download the script
```
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/brewinstallsilicon.sh
chmod 755 ./brewinstallsilicon.sh
./brewinstallsilicon.sh
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
#### Web Broswers
*  Google Chrome
*  Firefox
*  Microsoft Edge

#### Text editors
* Atom
* Vscode
* RubyMine

#### Terminal
* Iterm2
* Warp
* Hyper

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
