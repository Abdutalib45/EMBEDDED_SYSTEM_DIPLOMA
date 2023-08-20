MEMORY
{

 rom(rx) : ORIGIN = 0x00000000, LENGTH = 512M
 ram(rwx) : ORIGIN = 0x20000000, LENGTH = 512M

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
		. = . + 0x1000;
		_E_HEAB = .;
		. = . + 0x1000;
		_SP_TOP = .;
		
	}> ram

}

