#! /bin/bash

# Get info from user and put it in variables
echo "Please enter relevant information for your application"
echo "GitHib User:"
read GITHUB_USER
echo "App Name:"
read APP_NAME
echo "Code language: "
read APP_LANGUAGE
echo "Ports required to open from the containe:"
read APP_PORTS
echo "Base image url:"
read APP_BASE_IMAGE_URL
echo "Metrics to collect for prometheus:"
read APP_METRICS

#HOME_DIR='pwd'
#echo $HOME_DIR


mkdir ~/$APP_NAME

DIR=$(pwd)
echo $DIR


# create Dockerfile
cp $DIR/Dockerfile.example ~/$APP_NAME/Dockerfile
sed -i "s/baseimage/$APP_BASE_IMAGE_URL/g" ~/$APP_NAME/Dockerfile
sed -i "s/ports/$APP_PORTS/g" ~/$APP_NAME/Dockerfile

#create skaffold.yaml file
cp $DIR/skaffold.yaml ~/$APP_NAME/skaffold.yaml
sed -i "s/pathto/$APP_NAME/g" ~/$APP_NAME/skaffold.yaml

pathto/


#Create a repository
#mkdir ~/$APP_NAME
#cd ~/$APP_NAME
#touch README.md
#git init
#git add README.md
#git commit -m "first commit"
#git remote add origin git@github.com:$GITHUB_USER/$APP_NAME.git
#git push -u origin master
#curl -u ${USER:-${GITHUB_USER}} https://api.github.com/user/repos -d "{\"name\": \"${REPONAME:-${APP_NAME}}\", \"description\": \"${blabla}\", \"private\": false, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"

#git remote set-url origin git@github.com:${USER:-${GITHUB_USER}}/${REPONAME:-${APP_NAME}}.git
#git push --set-upstream origin master
