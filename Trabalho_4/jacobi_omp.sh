#!/bin/bash

n=3000
num_threads=1

for i in {1..5}
do
    echo "Running program with n=$n and num_threads=$num_threads"
    ./jacobi_omp -n $n -t $num_threads
    num_threads=$((num_threads*2))
done