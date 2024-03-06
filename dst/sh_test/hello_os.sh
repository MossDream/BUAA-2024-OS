#!/bin/bash
# 在src/sh_test 目录下，有一个file 文件和hello_os.sh 文件。hello_os.sh 是
# 一个未完成的脚本文档，请同学们借助shell编程的知识，将其补完，以实现通过命令bash
#  hello_os.sh AAA BBB，在 hello_os.sh 所处的目录新建一个名为 BBB 的文件，其内容为
# AAA文件的第8、32、128、512、1024行的内容提取(AAA文件行数一定超过1024行)。[注
# 意：对于命令bashhello_os.sh AAABBB，AAA及BBB可为任何合法文件的名称，例如
# bash hello_os.sh file hello_os.c，若已有hello_os.c文件，则将其原有内容覆盖]

touch ./$2
sed -n '8p;32p;128p;512p;1024p' $1 > $2


