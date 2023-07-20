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
		_E_TEXT = .;	
	}> rom

	.data : {
		_S_DATA = .;
		*(.data)
		_E_DATA = .; 
	}> ram AT> rom


	.bss : {
		_S_BSS = .;

		*(.bss)
		_E_BSS = .;
		SP_TOP = . + 0x1000;
	}> ram

}

