.PHONY: all armv7 thumbv7 clean

SRC=$(wildcard *.c)
armv7=$(SRC:.c=-armv7.elf)
thumbv7=$(SRC:.c=-thumbv7.elf)

all: armv7 thumbv7

armv7: $(armv7)

$(armv7): %-armv7.elf: %.c
	arm-none-eabi-gcc -marm --specs=rdimon.specs $< -o $@

thumbv7: $(thumbv7)

$(thumbv7): %-thumbv7.elf: %.c 
	arm-none-eabi-gcc -mthumb --specs=rdimon.specs $< -o $@

clean: 
	-rm *.elf
