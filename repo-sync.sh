#!bin/bash
git remove add upstream ${1}
git remote -v
git fetch upstream
git checkout master
git merge upstream/master