CFLAGS  ?= -Wall -Wextra -Werror -march=corei7 -mtune=corei7

components = fssb.o \
			 arguments.o \
			 utils.o \
			 proxyfile.o \
			 callname.o

all: $(components)
	cc -o fssb $(components) -lcrypto

fssb.o: fssb.c
arguments.o: arguments.c
utils.o: utils.c
proxyfile.o: proxyfile.c
callname.o: callname.c

clean:
	rm -rf *.o
	rm -rf fssb
