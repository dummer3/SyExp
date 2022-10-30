#!/bin/bash

for e in $(seq $1)
do
    ./ecrivain.sh $3 &
done

for e in $(seq $2)
do
    ./lecteur.sh $3 &
done

wait
