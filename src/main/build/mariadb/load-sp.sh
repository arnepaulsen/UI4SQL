#!/bin/bash
file="procedures.lst"
while read -r line; do
echo -e "$line"
mysql -u root -h 192.168.96.7 -peasy4me!!  ui4sql < storedprocedures/"$line"
done <$file

