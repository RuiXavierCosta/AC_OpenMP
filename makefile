CC=gcc
CFLAGS=-I.

makemain: main.c
	$(CC) -o main main.o $(CFLAGS)