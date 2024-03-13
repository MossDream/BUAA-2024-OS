#!/bin/bash
mkdir ./test
cp -r ./code ./test
cat ./code/14.c
cd ./test/code
for ((i=0; i<=15; i++))
do
  gcc -c $i.c 
done
cd ..
gcc ./code/*.o -o hello
touch err.txt
./hello >&2 ./err.txt
mv ./err.txt ../
cd ..
chmod 655 err.txt
n1=1
n2=1
if [ $# -eq 1 ]; then n1=$($1); fi
if [ $# -eq 2 ]; then n1=$($1); n2=$($2) fi
n=$($(n1)+$(n2))
sed -n '$np' err.txt >&2