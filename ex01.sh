#!/bin/bash
echo 'Descobrir a quantiade de atrasos de uma dada companhia passada como parâmetro'
cat data-aula-4 | cut -d, -f14,15 | grep '.,.' | wc -l $1
