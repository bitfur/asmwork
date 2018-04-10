out: out.o
	ld -m elf_i386 -o out out.o
out.o: out.asm
	nasm -f elf -g -F stabs out.asm
tickle:
	touch out.asm
