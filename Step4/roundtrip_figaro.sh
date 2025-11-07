#!/bin/bash

awk -v cols=3174 -f flat2matrix.awk ../data/Matrices/FIGARO-FLAT.tsv > matrix.tsv
awk -f matrix2flat.awk matrix.tsv > flat2.tsv
diff -s ../data/Matrices/FIGARO-FLAT.tsv flat2.tsv