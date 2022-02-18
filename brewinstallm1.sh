#!/bin/sh
# Xcode
xcode-select --install
# Homebrew Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
# Apps
brew install --cask atom
brew install --cask iterm2
# Homebrew taps
brew tap thoughtbot/formulae
brew tap homebrew/services
brew tap universal-ctags/universal-ctags
brew tap heroku/brew
# Brew install web devloment dependices
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
brew install luarocks
brew install heroku/brew/heroku
heroku autocomplete --refresh-cache
brew install parity
brew services start postgresql
brew install gh
brew install libvips
brew install libyaml
brew install coreutils
brew install postgres
brew install redis
brew services start redis
# Ruby
brew install rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
rbenv install 3.1.0
rbenv global 3.1.0
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo Done! Homebrew has been successfully installed.
echo Installing dot files
git config --global core.excludesfile ~/.gitignore
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/dotfiles/.gitignore
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/dotfiles/.hushlogin
rm .zshrc
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/Brew/main/dotfiles/.zshrc
echo Done
exit
