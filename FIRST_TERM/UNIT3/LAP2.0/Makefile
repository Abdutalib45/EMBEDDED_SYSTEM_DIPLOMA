CC=arm-none-eabi
CFLAGS=-c -gdwarf-2 -mcpu=cortex-m3 -mthumb
INCS=-I .
LIBS=
SRC =$(wildcard *.c)
OBJ =$(SRC:.c=.o)
As =$(wildcard *.s)
AsOBJ=$(As:.s=.o)
Project_name=app



all: $(Project_name).bin
%.o: %.s
	$(CC)-as.exe $(CFLAGS) $(INCS) $< -o $@
	
%.o: %.c
	$(CC)-gcc.exe $(CFLAGS) $(INCS) $< -o $@
	
$(Project_name).elf: $(OBJ) $(AsOBJ)
	$(CC)-ld.exe -T linker.ld  -MAP=file.map $(LIBS) $(OBJ) $(AsOBJ) -o $@

$(Project_name).bin: $(Project_name).elf
	$(CC)-objcopy.exe -O binary $< $@	

clear:
	rm *.bin *.elf

clear_all:
	rm *.bin *.elf	*.o		