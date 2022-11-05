#!/bin/bash

cp -r static templates tests jenkins/build/
cp .env hello.py requirements.txt jenkins/build/

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd jenkins/build/ && docker-compose -f docker-compose.yml build --no-cache
