#!/bin/bash
file="views.lst"
while read -r line; do
echo -e "$line"
mysql -u ui4sql -h 192.168.96.3 -peasy4me!!  ui4sql < views/"$line"
done <$file

