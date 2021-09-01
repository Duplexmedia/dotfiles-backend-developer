#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install `wget` with IRI support.
brew install wget

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install php

# Install other useful binaries.
brew install git
brew install ghostscript
brew install imagemagick
brew install p7zip
brew install pigz
brew install rename
brew install ssh-copy-id
brew install pkg-config

# Install custom software
brew install --cask phpstorm
brew install --cask google-chrome
brew install --cask tableplus
brew install --cask postman
brew install --cask cyberduck
brew install node@14
brew install --cask docker
brew install docker-compose
brew install --cask virtualbox
brew install --cask vagrant
brew install --cask firefox
brew install --cask anydesk
brew install --cask franz
brew install --cask slack
brew install --cask imageoptim
brew install --cask adobe-creative-cloud
brew install --cask google-drive-file-stream
brew install --cask screaming-frog-seo-spider
brew install --cask the-unarchiver
brew install --cask visual-studio-code
brew install --cask tunnelblick
brew install --cask teamviewer
brew install --cask 1password
brew install --cask tuple
brew install --cask termius
brew install --cask zoom
brew install gulp-cli

# Remove outdated versions from the cellar.
brew cleanup


#Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

#Compile php extension
#pecl install imagick // currently not working on php 8
#brew services restart php
