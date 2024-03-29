#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew tap homebrew/cask-fonts

formulae=(
  coreutils
  moreutils
  findutils
  gnu-sed
  wget
  openssl
  git
  tree
  socat
  ack
  ripgrep
  elasticsearch
  glib
  gnupg
  imagemagick
  memcached
  sqlite
  privoxy
  fontforge
  ncdu
  ngrep
  redis
  ffmpeg
  sshuttle
)

brew install ${formulae[@]}

brew link openssl --force

# Casks
# Apps
apps=(
  ngrok
  visual-studio-code
  rectangle
  rocket
  google-chrome
  firefox
  bitwarden
  iterm2
  slack
  insomnia
  flux
  skype
  sourcetree
  spotify
  bitbar
  opera
  keka
  sequel-pro
  vlc
  android-file-transfer
  wireshark
  opera-mobile-emulator
  imageoptim
  svgcleaner
  handbrake
  android-platform-tools
  zoom
  dbeaver-community
  nextcloud
  docker
  soulseek
  font-fira-code
  audacity
  brave-browser
  calibre
  tableplus
  bruno
)

echo "installing apps..."
brew install --cask ${apps[@]}

# Remove outdated versions from the cellar
brew cleanup

# RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB 
\curl -sSL https://get.rvm.io | bash -s stable

# Volta
curl https://get.volta.sh | bash

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Finally, consider a nice dotfile setup from 
# https://github.com/mathiasbynens/dotfiles
