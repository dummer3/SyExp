#!/bin/bash

line=$(mktemp fileXXX) 
tail -n +2 $1 > $line
head -n 1 $1 >> $line
mv $line $1


