cd test_1
if [ "git pull" == "Already up-to-date." ]
then
    echo "Nothing to update!"
else
    git pull
    git push mirror
fi

git remote add mirror https://gitlab.com/alexiabega0930/test_1.git
git push mirror