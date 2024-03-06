# 要求在csc目录下通过命令make可在csc/code目录中生成fibo.o、main.o，在csc目录中生
# 成可执行文件fibo，再输入命令make clean后只删除两个.o文件。

# -C选项表示进入到指定的目录中执行指定的make命令
all: fibo

fibo: code
	make -C ./code
	gcc ./code/fibo.o ./code/main.o -o fibo

clean:
	make clean -C ./code