#!/bin/bash

cat data-aula-4 | cut -d, -f15 | grep -v -   > colunaex6.txt

echo 'vamos fazer o sum e vai dar certo: '

awk '{SUM += $1} END {print SUM}' colunaex6.txt 
