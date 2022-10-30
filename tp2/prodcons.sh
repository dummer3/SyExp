#!/bin/bash

declare -i p=4
declare -i c=8
if [ $# -gt 2 ] ;then
    echo "error too much arguments"
    exit 0

elif [ $# -eq 2 ]; then
	 p=$1
	 c=$2
elif [ $# -eq 1 ]; then
    c=$1
    p=1
fi

rm pipe
mkfifo pipe
   
# `seq 4` <=> $(seq 4)

for param in `seq $p`
do
./producteur.sh 2>&1 1>pipe &
done


for param in `seq $c`
do
./consommateur.sh <pipe &
done

wait
