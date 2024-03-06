#!/bin/bash
#First you can use grep (-n) to find the number of lines of string.
#Then you can use awk to separate the answer.
# 在Lab0工作区的ray/sh_test2目录下，存在一个未补全的search.sh文件，
# 将其补完，以实现通过命令bash search.sh file int result，可以在当前目录下生成
# result文件，内容为file文件含有int字符串所在的行数，即若有多行含有int字符串
# 需要全部输出。[注意：对于命令bashsearch.shfileintresult，file及result可
# 为任何合法文件名称，int可为任何合法字符串，若已有result文件，则将其原有内容覆
# 盖，匹配时大小写不忽略]

touch ./$3
# 用换行符分割
grep -n $2 $1 | awk -F '\n' '{print $1}' > $3