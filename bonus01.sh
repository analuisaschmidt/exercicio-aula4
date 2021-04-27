#!/bin/bash

echo 'Listar qual companhia teve o maior tempo total de atrasos (atrasos somente na decolagem):'

# 9 companhias aéreas
# 16 é DepDelay

cat data-aula-4 | cut -d, -f9 | sort -u | grep --invert-match -i 'uniq' > lista-companhias.txt

for i in $(cat lista-companhias.txt)
do
	echo $i
	cat data-aula-4 | sort -n -t, -k16 | cut -d, -f9,16 | grep -v - | grep $i | cut -d, -f2 > atrasos-companhia.txt
	awk '{SUM += $1} END {print SUM}' atrasos-companhia.txt
	maior_tempo -n
	if [$SUM -ge $maior_tempo]  
	then
		echo 'é maior'
		$maior_tempo = SUM
	fi	
done
echo $maior_tempo

