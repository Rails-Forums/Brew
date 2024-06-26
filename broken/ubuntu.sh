#!/bin/sh
# Homebrew Install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/ubuntu/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Homebrew taps
brew tap thoughtbot/formulae
brew tap homebrew/services
brew tap universal-ctags/universal-ctags
brew tap heroku/brew

# Brew install web devloment dependices
brew install pcre
brew install universal-ctags
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
brew install railwayapp/railway/railway
brew install heroku/brew/heroku
brew install parity
brew install postgresql@14
brew services start postgresql@14
brew install gh
brew install libvips
brew install libyaml
brew install coreutils
brew install postgres
brew install redis
brew services start redis

# Ruby
brew install rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
rbenv install 3.3.0
rbenv global 3.3.0

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# echo Installing dot files
git config --global core.excludesfile ~/.gitignore
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/brew/main/dotfiles/.gitignore ~/.gitignore
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/brew/main/dotfiles/.hushlogin ~/.hushlogin
rm ~/.zshrc
curl --remote-name https://raw.githubusercontent.com/Rails-Forums/brew/main/dotfiles/.zshrc ~/.zshrc
echo Done
exit
