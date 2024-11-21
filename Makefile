.POSIX:

all: skosh

skosh: skosh.o
	$(CC) -o skosh skosh.o

skosh.o: skosh.c

clean:
	rm -f skosh *.o
