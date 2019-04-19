#!/bin/bash

##update apt

sudo apt full-upgrade -y

##install Debian/Ubuntu Brew

sudo apt-get install build-essential curl file git

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

brew install gcc

echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

##install git, az-cli and node

brew install git

brew install azure-cli

brew install node

echo "newenviro finished"
