all: inifile

clean:
	@rm -f inifile *.o

inifile: inifile.c iniparser.c iniparser.h
	@gcc -g -Wall -I. -o inifile inifile.c iniparser.c
