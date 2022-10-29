# Brew setup
#### This script installs all necessary requirements for web development. This script also sets up your dotfiles.
#### Also when oh-my-zsh is installed type exit and the script will continue.

#### For Ubuntu there is 3-4 commands you need to run yourself AFTER the script is finshed which will be down below.

## Requirements
#### Mac Os
* macOS Mojave
* macOS Catalina
* macOS BigSur
* macOs Monterey
#### Ubuntu
* Most major versions
* ALSO COMPATABLE WITH ARM 

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

#### This script is for ubuntu.
Open terminal

Download the script
```
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/ubuntu.sh
chmod +x ./ubuntu.sh
./ubuntu.sh
```
#### After the Ubuntu script runs
```
# Change username to any username you would like
sudo -u postgres createuser username -s
sudo -u postgres psql
postgres=# \password username
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
