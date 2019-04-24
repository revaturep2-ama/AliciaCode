#!/bin/bash

##check if script 1 is successful

##check for git and node

if ! [ -e /usr/bin/git ]&& if ! [ -e /home/linuxbrew/.linuxbrew/bin/node ]; then
exit 1; echo "no git or node"
fi

echo "node and git set"
echo "making project structure"

parentdir=$1
dir=$2
username=$3
useremail=$4

if [ -d -n $dir]; then
exit 1; echo "directory is not empty"
fi

cd $parentdir

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

git config --global user.name $username
git config --global user.email $useremail
git init

npm 

echo "enviroment check and project setup complete"
