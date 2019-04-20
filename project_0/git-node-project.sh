#!/bin/bash

##check if script 1 is successful

##check for brew

if [ -e /usr/bin/brew ]; then

echo "brew set"

else echo "no brew"

fi

##check for az-cli

if [-e /home/linuxbrew/.linuxbrew/bin/az ]; then

echo "az set"

else echo "no az"

fi

##check for git, then initialize if true

if [ -e /usr/bin/git ]; then

echo "git set"

git init

else echo "no git"

fi

##check for node

if [ -e /home/linuxbrew/.linuxbrew/bin/node ]; then

echo "node set"
echo "making project structure"

dir=$2

mkdir /$dir/.docker

touch \
  /$dir/.docker/dockerfile \
  /$dir/.docker/dockerup.yaml

## github
mkdir -p \
  /$dir/.github/ISSUE_TEMPLATE \
  /$dir/.github/PULL_REQUEST_TEMPLATE

touch \
  /$dir/.github/ISSUE_TEMPLATE/issue-template.md \
  /$dir/.github/PULL_REQUEST_TEMPLATE/pull-request-template.md

touch \
  /$dir/.github/CODE-OF-CONDUCT.md \
  /$dir/.github/CONTRIBUTING.md

## root
mkdir \
 /$dir/client \
 /$dir/src \
 /$dir/test

touch \
  /$dir/client/.gitkeep \
  /$dir/src/.gitkeep \
  /$dir/test/.gitkeep

touch \
  /$dir/.azureup.yaml \
  /$dir/.dockerignore \
  /$dir/.editorconfig \
  /$dir/.gitignore \
  /$dir/.markdownlint.yaml \
  /$dir/CHANGELOG.md \
  /$dir/LICENSE.txt \
  /$dir/README.md
  
  else echo "no node"
  
  fi
  
  echo "enviroment check and project setup complete"
