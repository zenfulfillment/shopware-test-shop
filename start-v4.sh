#!/bin/bash

docker-compose -f v4.yml up -d
docker-compose -f v4.yml exec shop /swtools/init.sh
