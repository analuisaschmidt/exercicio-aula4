#!/bin/bash

cat data-aula-4 | sort -n -t, -k15,17 | cut -d, -f15,17 | grep -v - | grep 'LAX' | cut -d, -f1 > colunasex8.txt

echo 'vamos fazer o sum e vai dar certo: '

awk '{SUM += $1} END {print SUM}' colunasex8.txt 
