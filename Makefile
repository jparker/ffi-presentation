TARGETS = hello fibonacci libprime.so prime prime_checkpoint

all: $(TARGETS)

prime: prime.o
	gcc prime.o -o prime -lm

prime_checkpoint: prime_checkpoint.o
	gcc prime_checkpoint.o -o prime_checkpoint -lm

libprime.so: prime.o
	gcc -shared -o libprime.so prime.o -lm

%.o: %.c
	gcc -c $< -Wall -Werror -fpic

clean:
	rm -f $(TARGETS) *.so *.o
