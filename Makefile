.PHONY : default run
CFLAGS=-Wall

default:
	@gcc $(CFLAGS) -g main.c -o ssg.out

run:
	@valgrind --leak-check=full -s ./ssg.out
