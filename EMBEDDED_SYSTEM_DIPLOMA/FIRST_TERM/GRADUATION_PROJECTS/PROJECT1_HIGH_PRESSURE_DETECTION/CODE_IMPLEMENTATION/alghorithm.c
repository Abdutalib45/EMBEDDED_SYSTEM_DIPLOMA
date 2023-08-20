#include <stdint.h>
#include "main.h"
#include "alghorithm.h"
uint32_t pressure_val2=0;
uint32_t threshold = 20;
void (*alg_state)();

void set_pressure_val(uint32_t val)
{
	pressure_val2 = val;
	
}



enum alg_state_id {
	high_pressure_detect
	
}alg_state_id;




state_define(high_pressure_detect)
{
	alg_state_id = 	high_pressure_detect;
	if (pressure_val2>threshold)
	{
		high_pressure_detected();

	}

}