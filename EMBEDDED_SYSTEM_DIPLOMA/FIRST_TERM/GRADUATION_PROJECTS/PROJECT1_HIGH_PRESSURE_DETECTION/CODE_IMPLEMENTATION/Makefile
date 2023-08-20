CC = arm-none-eabi
CFLAGS =-c -mcpu=cortex-m3 -gdwarf-2 -g -mthumb
INCS = -I .
LIBS =
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
AS = $(wildcard *.s)
ASOBJ = $(AS:.s=.o)
project_name = pressure_detection





all : $(project_name).bin
$(project_name).bin : $(project_name).elf
	$(CC)-objcopy.exe  -O binary $< $@

%.o : %.c
	$(CC)-gcc.exe $(CFLAGS) $(INCS) $< -o $@ 

%.o : %.s
	$(CC)-as.exe $(CFLAGS) $(INCS) $< -o $@



$(project_name).elf : $(OBJ) $(ASOBJ)
		$(CC)-ld.exe -T linker.ld -Map=file.map $(OBJ) $(ASOBJ) $(LIBS) -o $@ 


remove :
			rm *.elf *.bin

remove_all :
			rm *.elf *.bin	*.o		