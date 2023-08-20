ENTRY(.reset)
MEMORY
{

 rom(rx) : ORIGIN = 0x80000000, LENGTH = 128k
 ram(rwx) : ORIGIN = 0x20000000, LENGTH = 20k

}

SECTIONS
{
	.text :	{
		*(.vectors*)
		*(.text)
		*(.rodata)	
	}> rom

	.data : {
		*(.data)

	}> rom


	.bss : {

		*(.bss)

	}> ram

}

