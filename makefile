all:main

main: src/main.c src/geometry.c
	gcc -Wall -o main -I src src/main.c src/geometry.c -lm

