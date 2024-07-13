#!/bin/bash
set -e

test_dest="/home/santatra/projet_kely/kotrana/resumed"
theme="jsonresume-theme-onepage-plus"
repo="git@github.com:HarimbolaSantatra/jsonresume-theme-onepage-plus.git"
branch="test"

git push
cd $test_dest/node_modules
if [ ! -e $theme ]; then
    echo "Repository $theme not present!"
    echo "Cloning ..."
    git clone -b $branch $repo
fi
echo "Repository $theme is present!"
cd $theme
git pull origin $branch
npm run make
