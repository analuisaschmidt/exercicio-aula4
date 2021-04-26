#!/bin/bash

echo 'Voo com maior atraso na saída'

cat data-aula-4 | sort -n -t, -k16 | cut -d, -f10 | tail -1 $1


