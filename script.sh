#!/bin/bash
# set -e
CURRENT_VERSION=$(jq -r .version package.json)
GIT_TAG="v$CURRENT_VERSION"

echo $GIT_TAG
git tag -l "$GIT_TAG"
git show-ref --tags $GIT_TAG --quiet

if [ "true"="true" ] && ! git show-ref --tags $GIT_TAG --quiet; then
  echo "tag doesn't exist or error in command"
fi

echo end
