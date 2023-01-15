#!/bin/bash

if [ -e test_1 ]
then
  cd test_1
else
  git clone https://github.com/alexiabega/test_1.git
  cd test_1
fi

if [ "git pull" == "Already up-to-date." ]
then
    echo "Nothing to update! All set!"
else
    git pull
    git push mirror
fi

git remote add mirror https://gitlab.com/alexiabega0930/test_1.git
git push mirror