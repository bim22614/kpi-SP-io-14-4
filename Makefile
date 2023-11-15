CC=g++
CFLAGS=-c -Wall

all: main

main: main.o hello.o foo.o
	$(CC) main.o hello.o foo.o -o main

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

hello.o: hello.cpp hello.h
	$(CC) $(CFLAGS) hello.cpp

foo.o: foo.cpp foo.h
	$(CC) $(CFLAGS) foo.cpp

clean:
	rm -rf *.o main
