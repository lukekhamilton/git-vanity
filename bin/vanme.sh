#!/bin/bash

# delete
rm -rf ./.git

# create new remote
git init

# add remote
git remote add origin git@github.com:lukekhamilton/git-vanity.git

# Write something really clever
export QUOTE=$(shuf -n 1 ./quotes.txt)
echo $QUOTE
vanity write -c 100 -w 2 "$QUOTE"

# commit
git add .
git commit -m "it all means nothing..."

# git push and overwrite upstream repo.
git push -u --force origin master

