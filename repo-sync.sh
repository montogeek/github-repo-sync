#! /usr/bin/env bash
git remote add upstream ${1}
git remote -v
git fetch upstream
git checkout master
git merge upstream/master