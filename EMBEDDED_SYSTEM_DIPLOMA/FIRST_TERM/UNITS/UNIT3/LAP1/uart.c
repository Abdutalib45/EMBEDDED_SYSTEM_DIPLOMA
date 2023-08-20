#define UART0RG *((volatile unsigned int*)0x101f1000)
void uart(unsigned char *name)
{
   while (*name!=0)
	{
	    UART0RG=(unsigned int)*name;
	    name++;	
	
	}
		



}