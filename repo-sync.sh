#!/bin/bash

 REPO_NAME=repo-sync-bitbucket.git
 ORIGIN_URL=git@bitbucket.org:dilanarjuna/repo-sync-bitbucket.git
 REPO1_URL=git@github.com:arjunadilan/repo-sync-git.git

 #REPO1_URL=https://arjunadilan:perfume90210@github.com/arjunadilan/rrepo-sync-git.git


 ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
 ssh-keyscan -t rsa bitbucket.com >> ~/.ssh/known_hosts


rm -rf $REPO_NAME
git clone --bare $ORIGIN_URL
cd $REPO_NAME
git push --mirror $REPO1_URL