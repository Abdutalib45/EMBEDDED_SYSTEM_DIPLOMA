#include <stdint.h>
extern uint32_t S_ldata;
extern uint32_t S_vdata;
extern uint32_t E_vdata;
extern uint32_t S_bss;
extern uint32_t E_bss;
extern uint32_t stack_top;

void vector_handler ();
void reset_handler ();
void vector2_handler ()__attribute__((weak,alias("vector_handler")));;
void vector3_handler ()__attribute__((weak,alias("vector_handler")));;
void vector4_handler ()__attribute__((weak,alias("vector_handler")));;
void vector5_handler ()__attribute__((weak,alias("vector_handler")));;
void vector6_handler ()__attribute__((weak,alias("vector_handler")));;
void vector7_handler ()__attribute__((weak,alias("vector_handler")));;
void main();
void vector_handler()
{
	reset_handler();	
}

 void (*vectors[])()__attribute__((section(".vectors"))) = {
	(void (*)()) &stack_top,
	&reset_handler,
	&vector2_handler,
	&vector3_handler,
	&vector4_handler,
	&vector5_handler,
	&vector6_handler,
	&vector7_handler	
};



void reset_handler ()
{
	uint8_t*bss_ptr = (uint8_t*)&S_bss; 
	uint8_t*fdata_ptr = (uint8_t*)&S_ldata; 
	uint8_t*sdata_ptr = (uint8_t*)&S_vdata;
	uint32_t data_size = (uint32_t)&S_vdata - (uint32_t)&E_vdata,i; 	
	uint32_t bss_size = (uint32_t)&S_bss - (uint32_t)&E_bss; 	
	for (i=0;i<data_size;i++)
	{
		*sdata_ptr++=*fdata_ptr++;
	}
	
	for (i=0;i<bss_size;i++)
	{
		*bss_ptr++=0;
	}
		
	main();	
}