#include <stdio.h>
#include "STDINT.h"
#define RCC_BASE  0x40021000
#define GPIOA_BASE 0x40010800
#define GPIOA_CRH *(vint32 *)(GPIOA_BASE+0x04)
#define RCC_APB2ENR *(vint32 *)(RCC_BASE +0x18)
#define GPIOA_ODR *(vint32 *)(GPIOA_BASE+0x0c)
	
typedef union
{
	int all_ports;
	struct
	{
		vuint32 :12;
		vuint32 p_13 :1;
		
	}sport;
}uport;
volatile uport*ptr=(volatile uport*)&GPIOA_ODR;
int main()
{
RCC_APB2ENR|=1<<2;
GPIOA_CRH&=~(1<<20);
GPIOA_CRH|=1<<21;
GPIOA_CRH&=~(1<<22);
GPIOA_CRH&=~(1<<23);
GPIOA_CRH&=~(1<<24);
while (1)
{
	ptr->sport.p_13=1;
	for(int i=0;i<60;i++)
	ptr->sport.p_13=0;
	
}
return 0;
}