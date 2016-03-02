#!/usr/bin/env bash

set -e

if [[ "false" != "$TRAVIS_PULL_REQUEST" ]]; then
	echo "Not deploying pull requests."
	exit
fi

if [[ "master" != "$TRAVIS_BRANCH" ]]; then
	echo "Not on the 'master' branch."
	exit
fi

rm -rf .git
rm -r .gitignore

echo ".gitignore
.travis.yml
.DS_Store
bin
5374colormanual.pdf
*.md
.bowerrc
bower.json
package.json" > .gitignore

git init
git config user.name "Travis CI"
git config user.email "mugil.cephalus+github.com@gmail.com"
git add .
git commit --quiet -m "Deploy from travis"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
