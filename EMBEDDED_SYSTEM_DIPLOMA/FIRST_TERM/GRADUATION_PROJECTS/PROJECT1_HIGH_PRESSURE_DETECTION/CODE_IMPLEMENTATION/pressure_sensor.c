#include "main.h"
#include "stdint.h"
#include "pressure_sensor.h"
uint32_t pressure_val=0;
void (*ps_state)();
enum ps_state_id{
	ps_reading,
	ps_waiting
	
	
}ps_state_id;
void ps_init()
{
}
state_define(ps_waiting)
{
	ps_state_id = ps_waiting;
	delay(20);
	ps_state = state(ps_reading);

}
state_define(ps_reading)
{
	ps_state_id = ps_waiting;
	pressure_val = getPressureVal();
	set_pressure_val(pressure_val);
	ps_state = state(ps_waiting);
}