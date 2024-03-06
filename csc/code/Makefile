# 执行csc/code目录下的make可在csc/code目录中生成fibo.o、main.o
# 执行csc/code目录下的make clean可删除两个.o文件
all: fibo.o main.o

fibo.o:
	gcc -c fibo.c -I ../include

main.o:
	gcc -c main.c -I ../include

clean:
	rm *.o