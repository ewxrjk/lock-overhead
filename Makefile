CFLAGS=-O2 -fno-inline -Wall -W
EXECUTABLES=getc_locked getc_locked_function getc_unlocked getc_unlocked_function

all: $(EXECUTABLES)

getc_locked: getc_locked.o
getc_locked_function: getc_locked_function.o
getc_unlocked: getc_unlocked.o
getc_unlocked_function: getc_unlocked_function.o

getc_locked.o getc_locked_function.o getc_unlocked.o getc_unlocked_function.o: getc_generic.c

time: all
	time ./getc_locked
	time ./getc_locked_function
	time ./getc_unlocked
	time ./getc_unlocked_function

clean:
	rm -f *.o $(EXECUTABLES)
