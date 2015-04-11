#! /usr/bin/env bash
function getJsonVal () {
    python -c "import json,sys;sys.stdout.write(json.dumps(json.load(sys.stdin)$1))";
}

git_origin_url=$(git config --get remote.origin.url)

regex="git@github.com:(.*).git"

repo_name=$([[ $git_origin_url =~ $regex ]] && echo ${BASH_REMATCH[1]})

git_api_url="https://api.github.com/repos/$repo_name"

upstream_url=$(curl -s --header "Accept: application/vnd.github.v3+json" $git_api_url | getJsonVal "['source']['html_url']")

git remote add upstream (eval $upstream_url)
git fetch upstream
git checkout master
git merge upstream/master
