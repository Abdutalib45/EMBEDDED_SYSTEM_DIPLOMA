#include "ca.h"
#include "state.h"
int CA_speed =0;
int CA_distance = 0 ;
int CA_threshold =50;
void (*CA_state)();
enum{

	CA_waiting,
	CA_driving


}CA_state_id;
void US_set_distance (int d)
{
	CA_distance = d;
	(CA_distance<=CA_threshold) ? (CA_state=STATE(CA_waiting)):(CA_state=STATE(CA_driving));

}
STATE_define(CA_waiting)
{
	CA_state_id = CA_waiting;
	CA_speed =0;
	DC_motor (CA_speed);
	printf("CA_waiting satate : distance =%d speed=%d \n",CA_distance,CA_speed);
}

STATE_define(CA_driving)
{
	CA_state_id = CA_driving;
	CA_speed =30;
	DC_motor (CA_speed);
	printf("CA_driving satate : distance =%d speed=%d \n",CA_distance,CA_speed);

}
