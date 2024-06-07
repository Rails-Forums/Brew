#!/bin/sh
# User Inputs
echo "Heroku-cli provides you with tools like heroku local and other commands to help control your heroku applications"
read -p "Would you like to have heroku installed? y/n " HEROKU
echo "Railway-cli provides you to build your railway apps and add other things to create them"
read -p "Would you like to have railway installed? y/n " RAILWAY
echo "Rbenv is a ruby package manger this can install ruby for you to have everything you need to start RoR"
read -p "Would you like to have rbenv installed? y/n " RBENV
echo "Asdf is a package manger this can install ruby for you and o have everything you need to start RoR"
read -p "Would you like to have asdf installed? y/n " ASDF
echo "Next are a list of browsers you could install"
read -p "Would you like to install Google Chrome y/n " CHROME
read -p "Would you like to install Firefox y/n " FIREFOX
read -p "Would you like to install Microsoft Edge y/n " EDGE
read -p "Would you like to install Opera y/n" OPERA
echo "Next are a list of some text editors you could install"
read -p "Would you like to install Atom y/n " ATOM
read -p "Would you like to install Vscode y/n " VSCODE
read -p "Would you like to install RubyMine y/n " MINE
echo "Lastly is a list of terminals that you can choose from"
read -p "Would you like to install iTerm2 y/n " ITERM
read -p "Would you like to install Warp y/n " WARP
read -p "Would you like to install Hyper y/n " HYPER

# Xcode
xcode-select --install
# Homebrew Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/usr/local/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/usr/local/homebrew/bin/brew shellenv)"

# Homebrew taps
brew tap thoughtbot/formulae
brew tap homebrew/services
brew tap universal-ctags/universal-ctags
brew install dockutil

# Web Broswers
if test "$CHROME" = "y"; then
  brew install --cask google-chrome
  dockutil --add /Applications/Google\ Chrome.app
fi;

if test "$FIREFOX" = "y"; then
  brew install --cask firefox
  dockutil --add /Applications/Firefox.app
fi;

if test "$EDGE" = "y"; then
  brew install --cask microsoft-edge
  dockutil --add /Applications/Microsoft\ Edge.app
fi;

if test "$OPERA" = "y"; then
   brew install --cask opera
   dockutil --add /Applications/Opera.app
fi;

# Text editors
if test "$ATOM" = "y"; then
  brew install --cask atom
  dockutil --add /Applications/Atom.app
fi;

if test "$VSCODE" = "y"; then
  brew install --cask visual-studio-code
  dockutil --add /Applications/Visual\ Studio\ Code.app
fi;

if test "$MINE" = "y"; then
  brew install --cask rubymine
  dockutil --add /Applications/RubyMine.app
fi;

# Terminal
if test "$ITERM" = "y"; then
  brew install --cask iterm2
fi;

if test "$WARP" = "y"; then
  brew install --cask warp
  dockutil --add /Applications/Warp.app
fi;

if test "$HYPER" = "y"; then
  brew install --cask hyper
  dockutil --add /Applications/Hyper.app
fi;

# Brew install web devloment dependices
brew install pcre
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install gcc
brew install git
brew install openssl
brew install rcm
brew install reattach-to-user-namespace
brew install the_silver_searcher
brew install tmux
brew install vim
brew install watchman
brew install zsh
brew install node
brew install yarn
brew install luarocks

if test "$RAILWAY" = "y"; then
    brew install railwayapp/railway/railway
fi;
if test "$HEROKU" = "y"; then
    brew tap heroku/brew
    brew install heroku/brew/heroku
    brew install parity
fi;

brew install postgresql
brew services start postgresql
brew install gh
brew install libvips
brew install libyaml
brew install coreutils
brew install python-tk
brew install postgres
brew install redis
brew services start redis

# Ruby
if test "$RBENV" = "y"; then
    brew install rbenv
    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
    rbenv install 3.3.2
    rbenv global 3.3.2
fi;

if test "$ASDF" = "y"; then
    brew install asdf
    echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
    asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
    asdf install ruby latest
    asdf global ruby latest
fi;

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo Installing dot files
git config --global core.excludesfile ~/.gitignore
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/brew/main/dotfiles/.gitignore ~/.gitignore
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/brew/main/dotfiles/.hushlogin ~/.hushlogin
rm ~/.zshrc
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/brew/main/dotfiles/.zshrc ~/.zshrc
echo Done
exit
