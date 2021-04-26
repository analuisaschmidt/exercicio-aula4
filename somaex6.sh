#!/bin/bash

echo 'vamos fazer o sum e vai dar certo: '

awk '{SUM += $1} END {print SUM}' exemplo6.txt
