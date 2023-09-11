#!/bin/bash
# generate a number of files with random sizes in a range

min=1      # min size (MB)
max=10     # max size (MB)
nofiles=20 # number of files

for i in `eval echo {1..$nofiles}`
do
    dd bs=1M count=$(($RANDOM%max + $min)) if=/dev/urandom of=file$i
done
