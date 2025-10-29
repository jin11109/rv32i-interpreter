CROSS_COMPILE ?= riscv-none-elf-

all: test rv32i-interpreter

test: test.s linker.ld
	$(CROSS_COMPILE)as -o test.o test.s
	$(CROSS_COMPILE)ld -T linker.ld -o test.elf test.o
	$(CROSS_COMPILE)objcopy -O binary test.elf test

rv32i-interpreter: rv32i-interpreter.c
	gcc -Wall -O2 -o rv32i-interpreter rv32i-interpreter.c

check: all
	./rv32i-interpreter ./test

clean:
	rm -f rv32i-interpreter test.o test test.elf
