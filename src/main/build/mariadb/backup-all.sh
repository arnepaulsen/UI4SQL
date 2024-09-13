#!/bin/sh
mysqldump -u root -h 45.56.91.201 -p --databases arnepaulsenjr --column-statistics=0 > arnepaulsenjr.sql
mysqldump -u root -h 45.56.91.201 -p --databases paulsennetworks --column-statistics=0 > paulsennetworks.sql
mysqldump -u root -h 45.56.91.201 -p --databases paulsenitsolutions --column-statistics=0 > paulsenitsolutions.sql
mysqldump -u root -h 45.56.91.201 -p --databases pmo --column-statistics=0 > pmo.sql

