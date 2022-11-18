CURRENT_VERSION=$(jq -r .version package.json)
GIT_TAG="v$CURRENT_VERSION"

echo $GIT_TAG
git tag -l "$GIT_TAG"
if [ ! $(git tag -l "$GIT_TAG") ] && [ ! $(git tag -l "$GIT_TAG") ]
then
  echo "not in the list"

else

    echo "PRESENT"
fi
