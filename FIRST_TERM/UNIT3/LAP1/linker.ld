
ENTRY(reset)

MEMORY
{
	ROM (rwx): ORIGIN = 0x00000000,	LENGTH = 64M
}
SECTIONS
{
	. = 0x10000;
	.startup . :
	{
		startup.o(.text)
	}> ROM
	.text :
	{
		*(.text)
	}> ROM
	.data :
	{
		*(.data) *(.rodata)
	}> ROM
	.bss :
	{
		*(.bss)
	}> ROM
	. = . + 0x1100;
	stack_top = .;
}