TARGET = test
SRC = main.c foo.c

OBJ = $(patsubst %.c, %.o, $(SRC))

${TARGET}.elf: Makefile $(OBJ)
	gcc -o $@ $(OBJ)

%.o: %.c
	gcc -Wall -g -O0 -c $< -o $@

clean:
	rm -rf ${TARGET}.elf $(OBJ)

.PHONY: clean
