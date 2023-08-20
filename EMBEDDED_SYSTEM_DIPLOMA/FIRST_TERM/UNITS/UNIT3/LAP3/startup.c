////////////////^^^//////////////////


//@copyright .20/7/2023
//ENG. Abdulrahman Abutalib


////////////////^^^////////////////


#include <stdint.h>
//#define STACK_TOP 0x20001000
extern unsigned int _E_TEXT;
extern unsigned int _S_DATA;
extern unsigned int _E_DATA;
extern unsigned int _S_BSS;
extern unsigned int _E_BSS;
extern unsigned int SP_TOP;
extern int main(void);
void reset_Handler(void);
void MAIN_Handler(void)
{
	reset_Handler();

}
volatile static unsigned int arr[256];
void NMI_Handler(void) __attribute((weak,alias("MAIN_Handler")));;
void H_Handler(void) __attribute((weak,alias("MAIN_Handler")));
void MM_Handler(void) __attribute((weak,alias("MAIN_Handler")));
void BUS_Fault_Handler(void) __attribute((weak,alias("MAIN_Handler")));
void USAGE_Fault_Handler(void) __attribute((weak,alias("MAIN_Handler")));
void (*vector [])() __attribute__((section(".vectors"))) = {
	(void (*)()) &_E_BSS,
	 &reset_Handler,
	 &NMI_Handler,
	 &H_Handler,
	 &MM_Handler,
	 &BUS_Fault_Handler,	
	 &USAGE_Fault_Handler




};

void reset_Handler(void)
{
	unsigned int i=0;
 	unsigned int size_data = (unsigned char*)&_S_DATA - (unsigned char*)&_E_DATA ;
	unsigned int size_bss = (unsigned char*)&_S_BSS - (unsigned char*) &_E_BSS ;
	unsigned char * DATA_VMA =(unsigned char *)&_S_DATA;
	unsigned char * DATA_LMA =(unsigned char *)&_E_TEXT;
	unsigned char * BSS_VMA =(unsigned char *)&_S_BSS;
	for (i=0;i<size_data;i++)
	 {
	 	*DATA_VMA++=*DATA_LMA++;
	 }
	for (i=0;i<size_bss;i++)
	 {
	 	*BSS_VMA++=0;
	 }	
	main();
}