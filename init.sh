#!/bin/bash

mkdir workspace
mkdir mongo

echo "Please enter the name of web application (like app-myappUI) :"
read APP_WEB

echo "Please enter the name of backoffice application (like app-myapp) :"
read APP_BACK

docker-compose run embercli ember new ${APP_WEB}
docker-compose run nodejscli yo angular-fullstack ${APP_BACK}


sed -i 's/APP_WEB/${APP_WEB}/g' docker-compose.yml
sed -i 's/APP_BACK/${APP_BACK}/g' docker-compose.yml

docker-compose up 
