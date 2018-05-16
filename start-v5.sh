#!/bin/bash

docker-compose up -d
docker-compose exec shop /swtools/init.sh
docker-compose exec shop /swtools/install-demo-data-en.sh
