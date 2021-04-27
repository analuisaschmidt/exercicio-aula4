 #!/bin/bash

 echo 'vamos somar com vazios e vai dar certo: '

 awk '{SUM += $1} END {print SUM}' resolução-ex-07.txt 
