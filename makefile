CC=gcc -fopenmp
CFLAGS=-I.

makemain: main.c
	$(CC) main.c -o build/main