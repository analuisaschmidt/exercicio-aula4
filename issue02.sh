#!/bin/bash

echo 'Voo com maior atraso na chegada' 

cat data-aula-4 | sort -n -t, -k15 | cut -d, -f10 | tail -1 $1 
