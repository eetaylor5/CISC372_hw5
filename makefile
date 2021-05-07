
image: image.c image.h
	gcc -g image.c -o image -lm

image_omp: image_omp.c image.h
	gcc -g -fopenmp image_omp.c -o image_omp -lm

image_pt: image_pt.c image.h
	gcc -g  image_pt.c -o image_pt -lm -lpthread

clean:
	rm -f image image_omp image_pt output.png