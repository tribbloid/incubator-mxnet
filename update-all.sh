#!/usr/bin/env bash

git config credential.helper store

git pull --rebase

####  sometimes revision track from parent is broken, need to use update --remote
####  https://stackoverflow.com/questions/47470271/what-does-remote-actually-do-in-git-submodule-update-remote
git submodule update --init --remote --recursive

make -j$(nproc)
