#!/bin/bash

echo ' O voo mais longo é:' 


cat data-aula-4 | sort  -n -t, -k14 | cut -d, -f10 | tail -1 $1




