all:main


	
main:build/src/main.o build/src/geometry.o
	gcc -Wall build/src/main.o build/src/geometry.o -o bin/main -lm
build/src/geometry.o:src/geometry.c
	gcc -Wall -c src/geometry.c -o build/src/geometry.o
build/src/main.o:src/main.c
	gcc -Wall -c src/main.c -o build/src/main.o

run: 
	bin/./main

clean:
	rm -rf build/src/*.o build/test/*.o bin/main





