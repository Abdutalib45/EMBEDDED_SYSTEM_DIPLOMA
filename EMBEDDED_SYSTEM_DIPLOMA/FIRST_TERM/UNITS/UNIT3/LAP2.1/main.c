#define RCC_BASE  0x40021000
#define GPIOA_BASE 0x40010800
#define GPIOA_CRH *(volatile unsigned int *)(GPIOA_BASE+0x04)
#define RCC_APB2ENR *(volatile unsigned int *)(RCC_BASE +0x18)
#define GPIOA_ODR *(volatile unsigned int *)(GPIOA_BASE+0x0c)
	
typedef union
{
	volatile unsigned int all_ports;
	struct
	{
		volatile unsigned int :13;
		volatile unsigned int p_13 :1;
		
	}sport;
}uport;
volatile uport*ptr=(volatile uport*)&GPIOA_ODR;
int main()
{
RCC_APB2ENR|=1<<2;
GPIOA_CRH&=0xFFF0FFFF;
GPIOA_CRH|=1<<21;

while (1)
{
	int i=0;
	ptr->sport.p_13=1;
	for(i=0;i<1600;i++);
	ptr->sport.p_13=0;
	for(i=0;i<1600;i++);
}
return 0;
}