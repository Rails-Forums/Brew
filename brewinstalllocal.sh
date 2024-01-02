#!/bin/sh
# User Inputs
echo "Heroku-cli provides you with tools like heroku local and other commands to help control your heroku applications"
read -p "Would you like to have heroku installed? y/n " HEROKU
echo "Railway-cli provides you to build your railway apps and add other things to create them"
read -p "Would you like to have railway installed? y/n " RAILWAY
echo "Rbenv is a ruby package manger this can install ruby for you to have everything you need to start RoR"
read -p "Would you like to have rbenv installed? y/n " RBENV
echo "Asdf is a package manger this can install ruby for you and also node if you'd prefer to use it instead of brews"
read -p "Would you like to have asdf installed? y/n " ASDF

# Xcode
xcode-select --install
# Homebrew Install
mkdir ~/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
echo 'eval "$($HOME/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$($HOME/homebrew/bin/brew shellenv)"
brew update

# Homebrew taps
brew tap thoughtbot/formulae
brew tap homebrew/services
brew tap universal-ctags/universal-ctags

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
    rbenv install 3.3.0
    rbenv global 3.3.0
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
