#!/bin/bash
file="tables.txt"
while read -r line; do
echo -e "$line"
mysqldump -u root -h 192.168.1.4 -pgetajob!   --column-statistics=0 --lock-tables=false  pmo $line > tables/"$line".sql
done <$file

