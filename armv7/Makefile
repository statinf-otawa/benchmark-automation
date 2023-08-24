ELFS = $(wildcard *-armv7.elf)
DIFFS = $(ELFS:.elf=-diffs.txt)
ASM = $(ELFS:.elf=.asm)
GLISS = $(ASM:.asm=-gliss.asm)
NORM = $(ASM:.asm=-norm.asm) $(GLISS:.asm=-norm.asm)


.PHONY: all armv7 clean

all: armv7


armv7: $(DIFFS)

$(DIFFS): %-diffs.txt: %-norm.asm %-gliss-norm.asm
	-diff -w $< $(word 2,$^) > $@

$(NORM): %-norm.asm: %.asm
	./normalise-arm.py $< > $@

$(ASM): %.asm: %.elf
	arm-none-eabi-objdump -D $< > $@

$(GLISS): %-gliss.asm: %.elf
	./arm-disasm -m ARM $< > $@

clean: 
	-rm *.asm && rm *-diffs.txt

clean-all: clean
	-rm *.elf