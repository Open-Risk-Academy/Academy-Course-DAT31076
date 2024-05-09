#!/bin/bash
echo -n "Counting Columns: "
awk -F'\t' '{print NF; exit}' $1
echo -n "Counting Rows: "
cat $1 | wc -l