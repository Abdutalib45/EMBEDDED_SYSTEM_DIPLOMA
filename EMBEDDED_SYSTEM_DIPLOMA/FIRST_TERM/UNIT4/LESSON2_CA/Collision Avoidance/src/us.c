#include "us.h"
enum{

	US_busy


}US_state_id;
void (*US_state)();
unsigned int distance;
int generate_random(int min,int max)
{
	return (rand()%(max-min+1))+min;
}

void US_init ()
{
	//intialize us driver
	printf("US_init\n");
}

STATE_define(US_busy)
{
	US_state_id =US_busy;
	distance = generate_random (45,55);
	US_set_distance(distance) ;
	printf("US_busy_state : distance=%d\n",distance);
	US_state = STATE(US_busy);

}
