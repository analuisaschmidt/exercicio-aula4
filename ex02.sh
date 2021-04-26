#!/bin/bash

echo ' O voo mais longo é:' 

cat  data-aula-4  | cut -d, -f14 | sort -n -u | tail -1 $1



