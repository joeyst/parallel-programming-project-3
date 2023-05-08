#!/bin/bash
rm -f results.txt
echo "Number of items, Use mutex, Number of pop errors, Percent of pop errors, Elapsed time (microseconds)" >> results.txt
for numn in 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576
do
  for usemutex in true false 
  do
		rm -f mutex03
    g++ mutex03.cpp -o mutex03 -lm -fopenmp -DNUMN=$numn -DUSE_MUTEX=$usemutex
		./mutex03 2>> results.txt
  done
done