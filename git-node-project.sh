#!/bin/bash

##check if script 1 is successful

##check for brew

if [ -e /usr/bin/brew ]; then

echo "brew set"

else echo "no brew"

fi

##check for az-cli

if [ -e /home/linuxbrew/.linuxbrew/bin/az ]; then

echo "az set"

else echo "no az"

fi

##check for git

if [ -e /usr/bin/git ]; then

echo "git set"

git init

else echo "no git"

fi

##check for node

if [ -e /home/linuxbrew/.linuxbrew/bin/node ]; then

echo "node set"
echo "making project structure"

dir=$1

mkdir $dir

mkdir ./$dir/.docker

touch ./$dir/.docker/dockerfile

touch ./$dir/.docker/dockerup.yaml

##github

mkdir ./$dir/.github

mkdir ./$dir/.github/ISSUE_TEMPLATE

mkdir ./$dir/.github/PULL_REQUEST_TEMPLATE

touch ./$dir/.github/ISSUE_TEMPLATE/issue-template.md

touch ./$dir/.github/PULL_REQUEST_TEMPLATE/pull-request-template.md

touch ./$dir/.github/CODE_OF_CONDUCT.md

touch ./$dir/.github/CONTRIBUTING.md

mkdir ./$dir/client

mkdir ./$dir/src

mkdir ./$dir/test

touch ./$dir/client/.gitkeep

touch ./$dir/src/.gitkeep

touch ./$dir/test/.gitkeep

touch ./$dir/.azureup.yaml

touch ./$dir/.dockerignore

touch ./$dir/.editorconfig.yaml

touch ./$dir/.gitignore

touch ./$dir/.markdownlint.yaml

touch ./$dir/CHANGELOG.md

touch ./$dir/LICENSE.txt

touch ./$dir/README.md

else echo "no node"

fi

echo "enviroment check and project setup complete"
