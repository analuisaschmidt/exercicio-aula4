#!/bin/bash

cat data-aula-4 | sort -n -t, -k16,17 | cut -d, -f16,17 | grep -v - | grep 'JFK' | cut -d, -f1 > colunas.txt

echo 'vamos fazer o sum e vai dar certo: '

awk '{SUM += $1} END {print SUM}' colunas.txt




