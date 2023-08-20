#include "main.h"
#include <stdint.h>
#include "alarm_monitor.h"
void (*am_state)();
enum am_state_id{
	am_waiting,
	alarm_off,
	alarm_on
}am_state_id;

void high_pressure_detected()
{
	am_state = state(alarm_on);	
}
state_define(am_waiting)
{
	am_state_id = am_waiting;
	delay(1000);
	am_state =state(alarm_off); 
}
state_define(alarm_off)
{
	am_state_id = alarm_off;
	stop_alarm();
}


state_define(alarm_on)
{
	am_state_id = alarm_on;
	start_alarm();
	am_state=state(am_waiting);
	
}