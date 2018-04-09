out: out.o
	ld -o out out.o
out.o: out.asm
	nasm -f elf -g -F stabs out.asm
tickle:
	touch out.asm
