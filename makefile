# makefile for bsa7myex
#
bsa7myex: bsa7myex.o
	ld bsa7myex.o -o ./Build/DEBUG/bsa7myex

bsa7myex.o: bsa7myex.s
	as -g bsa7myex.s -o bsa7myex.o

.PHONY: clean
clean:
	rm *.o
	rm Build/DEBUG/*
