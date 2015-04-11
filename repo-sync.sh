#! /usr/bin/env bash
function getJsonVal () {
    python -c "import json,sys;sys.stdout.write(json.dumps(json.load(sys.stdin)$1))";
}

url=$(curl --header "Accept: application/vnd.github.v3+json" https://api.github.com/repos/montogeek/z19r | getJsonVal "['source']['html_url']")

git remote add upstream $url
git fetch upstream
git checkout master
git merge upstream/master