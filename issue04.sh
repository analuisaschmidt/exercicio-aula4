#!/bin/bash

echo 'O número de vôos que precisam ser redirecionados: '

cat data-aula-4 | cut -d, -f24 | grep 1 | wc -l $1
