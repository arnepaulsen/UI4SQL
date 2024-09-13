#!/bin/sh
docker run --detach  --name ui4sql-mariadb -p 3307:3306 -e MYSQL_USER=ui4sql -e MYSQL_PASSWORD=easy4me!! -e MYSQL_ROOT_PASSWORD=easy4me!! -e MYSQL_DATABASE=ui4sql  mariadb:latest

