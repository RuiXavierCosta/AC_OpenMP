CC=gcc -fopenmp -g
CFLAGS=-I.

fractal: fractal_novo.c fractal/fractalfuncs.c
	$(CC) fractal/fractalfuncs.c fractal_novo.c -o build/fractal
	chmod 755 genmovie

movie:
	./genmovie