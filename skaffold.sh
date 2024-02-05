#! /bin/bash

# Get info from user and put it in variables
echo "Please enter relevant information for your application"
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

# create Dockerfile
cp /home/narin/Skaffold-app-automation/Dockerfile.example /home/narin/Skaffold-app-automation/Dockerfile
sed -i "s/baseimage/$APP_BASE_IMAGE_URL/g" /home/narin/Skaffold-app-automation/Dockerfile
sed -i "s/ports/$APP_PORTS/g" /home/narin/Skaffold-app-automation/Dockerfile

