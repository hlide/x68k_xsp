all: main.X


main.X: \
	main.o \
	..\..\XSP\XSP2lib.o \
	..\..\PCG90\PCG90.o \
	..\..\PCM8Afnc\PCM8Afnc.o \
	..\..\PCM8Afnc\PCM8Afnc.o

	HLK $^ -o$@ -l BASLIB.L CLIB.L DOSLIB.L IOCSLIB.L FLOATFNC.L GNULIB.A
	dir $@

%.O::%.C
	gcc -c $< -O

