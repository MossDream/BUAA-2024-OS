#!/bin/bash
mkdir ./test
cp -r ./code ./test
cat ./code/14.c
for ((i=0; i<=15; i++))
do
  gcc -c ./test/code/($i).c
done
gcc ./test/code/*.o -o ./test/hello
touch ./test/err.txt
./test/hello >&2 ./test/err.txt
mv ./test/err.txt ./
chmod 655 ./err.txt
n1=1
n2=1
if [ $# -eq 1 ]; then n1=$($1); fi
if [ $# -eq 2 ]; then n1=$($1); n2=$($2) fi
n=$($(n1)+$(n2))
sed -n '($n)p' err.txt >&2

