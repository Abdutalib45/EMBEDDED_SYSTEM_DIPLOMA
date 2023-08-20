MEMORY 
{
	flash(rx) : ORIGIN = 0x08000000, LENGTH = 128k
	sram(rwx) : ORIGIN = 0x20000000, LENGTH = 20k
}
SECTIONS
{
	
	.text : 
	{ 
		. = ALIGN(4);
		*(.vectors*)
		*(.text*)
		*(.rodata)
		. = ALIGN(4);
		S_ldata = .;

	}>flash
	
	
	.data :
	{
		S_vdata = .;
		*(.data)
		. = ALIGN(4);
		E_vdata = .;
	}>sram AT>flash
	
	
	.bss :
	{
		S_bss = .;
		*(.bss)
		E_bss = .;
		. = ALIGN(4);
	}>sram
	. = . + 1000;
	stack_top = .;
}