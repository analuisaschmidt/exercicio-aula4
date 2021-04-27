#!/bin/bash

cat data-aula-4 | cut -d, -f9,15 | grep 'DL' | cut -d, -f2 | grep -v -   > colunaex6.txt

echo 'vamos fazer o sum e vai dar certo: '

awk '{SUM += $1} END {print SUM}' colunaex6.txt 
