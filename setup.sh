#!/bin/bash

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

formulae=(
  coreutils
  moreutils
  findutils
  gnu-sed --default-names
  wget --enable-iri
  vim --override-system-vi
  homebrew/dupes/grep
  homebrew/dupes/screen
  openssl
  git
  tree
  socat
  ack
  android-sdk
  elasticsearch
  glib
  gnupg
  imagemagick
  postgresql
  memcached
  mysql
  sqlite
  caskroom/cask/brew-cask
)

for item in formulae
  do
    brew install $item
done

brew link openssl --force

# Casks
# Apps
apps=(
  google-chrome
  google-chrome-canary
  firefox
  1password
  iterm2
  slack
  copy
  virtualbox
  evernote
  dash
  flux
  skype
  sourcetree
  sqlitebrowser
  spotify
  seil
  dnscrypt
  opera
  vagrant
  colloquy
  mamp
  cyberduck
  keka
  openoffice
  sequel-pro
  sublime-text3
  vlc
  smcfancontrol
  android-file-transfer
)

# Install apps to ~/Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="~/Applications" ${apps[@]}

# Remove outdated versions from the cellar
brew cleanup

# RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

##
## Manually
# pick nvm node, iojs, hosts file, etc

