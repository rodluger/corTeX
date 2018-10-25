#!/bin/bash -x
set -e

# Only trigger on regular commits
if [ "$TRAVIS_PULL_REQUEST" = "false" ]
then

    # Let's build the paper!
    echo "Building the paper..."
    cd $TRAVIS_BUILD_DIR/tex && make

    # Create a temporary directory and initialize
    # an empty repo with a single file: the compiled PDF
    mkdir -p travis && cd travis
    mv ../ms.pdf .
    git init
    git add -f ms.pdf

    # Force push this to the [branch_name]-pdf branch on GitHub
    git status
    git -c user.name='travis' -c user.email='travis' commit -m "building the paper"
    git status
    git push -f https://$GITHUB_USER:$GITHUB_API_KEY@github.com/$TRAVIS_REPO_SLUG HEAD:$TRAVIS_BRANCH-pdf

    # Return to top level
    cd $TRAVIS_BUILD_DIR

fi
