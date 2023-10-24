#!/bin/zsh

cd /home/archons/The-SQL-to-Water-H2O2.github.io

while; do
    sleep 20
    result=$(git status -uno)

    if [[ $result == *"Your branch is behind"* ]]; then
        git stash
        git pull
        echo "Pulled successfully on $(date)"
    fi
done