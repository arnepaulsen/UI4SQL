#!/bin/sh
mysqldump -u root -h 192.168.1.4 -p ui4sql --column-statistics=0 --lock-tables=false > ui4sql.sql

