# 要求在csc目录下通过命令make可在csc/code目录中生成fibo.o、main.o，在csc目录中生
# 成可执行文件fibo，再输入命令make clean后只删除两个.o文件。

all: fibo.c main.c
	gcc -c fibo.c -o code/fibo.o
	gcc -c main.c -o code/main.o
	gcc code/fibo.o code/main.o -o fibo
clean:
	rm code/fibo.o code/main.o