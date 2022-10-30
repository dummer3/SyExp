#!/bin/bash

trap " " 2

while read line
do
    (eval $line) & wait $!
    status=$?
    echo $status
done
