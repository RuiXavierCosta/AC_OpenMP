CC=gcc -fopenmp -g
CFLAGS=-I.
BUILD_DIR = build
IMAGES_DIR = build/images

fractal: fractal_novo.c fractal/fractalfuncs.c
	test -d "$(BUILD_DIR)" || mkdir $(BUILD_DIR)
	test -d "$(IMAGES_DIR)" || mkdir $(IMAGES_DIR)
	$(CC) fractal/fractalfuncs.c fractal_novo.c -o $(BUILD_DIR)/fractal
	chmod 755 genmovie

movie:
	./genmovie