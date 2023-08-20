#include <stdio.h>
#include <stdlib.h>
#include "dc.h"
#include "state.h"
enum{

	DC_idle,
	DC_busy


}DC_state_id;
unsigned int speed;
void (*DC_state)();
void DC_init ()
{
	printf("DC_init\n");
}
void DC_motor (int s)
{
	speed =s ;
	DC_state = STATE(DC_busy);
	printf("CA -> -> -> DC DC_motor() \n");
}


STATE_define (DC_busy)
{
	DC_state_id = DC_busy;
	DC_state = STATE(DC_idle);
	printf("DC_busy_state : speed=%d \n \n \n",speed);


}



STATE_define (DC_idle)
{
	DC_state_id = DC_idle;
	DC_state = STATE(DC_idle);
	printf("DC_idle_state : speed=%d \n \n \n",speed);

}
