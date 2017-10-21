CC=gcc -fopenmp
CFLAGS=-I.

makemain: main.c
	$(CC) main.c -o build/main $(CFLAGS)

fractal: fractal/fractal.c fractal/fractalfuncs.c 
	gcc -g fractalfuncs.c fractal.c -o fractal
	chmod 755 genmovie

make_movie:
	./fractal/genmovie