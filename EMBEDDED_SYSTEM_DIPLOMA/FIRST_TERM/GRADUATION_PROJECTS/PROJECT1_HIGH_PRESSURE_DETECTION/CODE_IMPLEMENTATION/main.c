#include <stdint.h>
#include "main.h"
#include "pressure_sensor.h"
#include "alarm_monitor.h"
#include "alghorithm.h"
#include "alarm_actuator.h"
void init ()
{
	GPIO_INITIALIZATION ();
	ps_init();
	actuator_init();
	ps_state = state(ps_reading); 
	alg_state = state(high_pressure_detect);
	am_state = state(alarm_off);
	
}
void main ()
{
	init();
	while (1)
	{
		ps_state();
		alg_state();
		am_state();
		delay(100);
	}
	
	
}