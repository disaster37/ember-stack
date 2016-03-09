#!/bin/bash

mkdir ember
mkdir nodejs
mkdir mongo

echo "Please enter the name of web application (like app-myappUI) :
read WEB_NAME

echo "Please enter the name of backoffice application (like app-myapp) :
read BACKOFFICE_NAME

docker-compose run embercli ember new ${WEB_NAME}
docker-compose run nodejscli yo angular-fullstack ${BACKOFFICE_NAME}


docker-compose up 
