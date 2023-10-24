#!/bin/zsh

result=$(git status -uno)

if [[ $result == *"Your branch is behind"* ]]; then
    git stash
    git pull
fi