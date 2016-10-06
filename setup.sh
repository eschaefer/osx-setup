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
  sqlite
  privoxy
  fontforge
  heroku
  ncdu
  ngrep
  redis
  ffmpeg
  caskroom/cask/brew-cask
)

brew install ${formulae[@]}

brew link openssl --force

# Casks
# Apps
apps=(
  atom
  google-chrome
  firefox
  1password
  iterm2
  slack
  insomnia
  virtualbox
  evernote
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
  vlc
  smcfancontrol
  android-file-transfer
  wireshark
  opera-mobile-emulator
  imageoptim
  svgcleaner
  postgres
  handbrake
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
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash

# If it runs...
nvm install 5 --default

npm i -g scss_lint GoogleChrome/lighthouse http-server



