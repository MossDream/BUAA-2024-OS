#!/bin/bash
# 在Lab0工作区ray/sh_test1目录中，含有100个子目录file1~file100，还存
# 在一个名为changefile.sh的文件，将其补完，以实现通过命令bash changefile.sh，可
# 以删除该目录内file71~file100共计30个子目录，将file41~file70共计30个子目录
# 重命名为newfile41~newfile70。[注意：评测时仅检测changefile.sh的正确性]
a=1
while [ $a -le 100 ]
do
	if [ $a -gt 70 ]	   #if loop variable is greater than 70
	then rm -r file$a
	elif [ $a -gt 40 ]         # else if loop variable is great than 40
	then mv file$a newfile$a
	fi
	a=`expr $a + 1`
	           #don't forget change the loop variable
done
