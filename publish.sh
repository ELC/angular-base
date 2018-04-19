#!/bin/bash
git init
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git checkout -b $1
git add .
git commit -m "Travis Build"
git remote add origin https://${GH_TOKEN}@github.com/ELC/hello-angular.git
git push --force --quiet --set-upstream origin $1
