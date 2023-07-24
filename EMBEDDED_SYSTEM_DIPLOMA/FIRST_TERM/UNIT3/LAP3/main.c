#include <stdint.h>
#define SYSCTL_RCGC2_R_BASE_ADDRESS  (SYSCTL_BASE_ADDRESS+0x108)
#define SYSCTL_RCGC2_R  *((volatile uint32_t *)SYSCTL_RCGC2_R_BASE_ADDRESS)
#define SYSCTL_BASE_ADDRESS  0x400FE000
#define GPIOF_BASE_ADDRESS  0x40025000
#define GPIOF_PORTF_DATA_R  *((volatile uint32_t *)(GPIOF_BASE_ADDRESS+0X3FC))
#define GPIOF_PORTF_DIR_R  *((volatile uint32_t *)(GPIOF_BASE_ADDRESS+0X400))
#define GPIOF_PORTF_DEN_R  *((volatile uint32_t *)(GPIOF_BASE_ADDRESS+0X51C))
void delay (uint32_t _delay)
{
	volatile uint32_t i=1;	
	for( i=0;i<_delay;i++);
}
int main (void)
{
	SYSCTL_RCGC2_R = 0x00000020;
	delay(200);
	GPIOF_PORTF_DIR_R |=1<<3; 		
	GPIOF_PORTF_DEN_R |=1<<3; 
	while (1)
	{
		GPIOF_PORTF_DATA_R |=1<<3;
		delay(20000);
		GPIOF_PORTF_DATA_R &=~(1<<3);
		delay(20000); 

	}
 return 0;
}


