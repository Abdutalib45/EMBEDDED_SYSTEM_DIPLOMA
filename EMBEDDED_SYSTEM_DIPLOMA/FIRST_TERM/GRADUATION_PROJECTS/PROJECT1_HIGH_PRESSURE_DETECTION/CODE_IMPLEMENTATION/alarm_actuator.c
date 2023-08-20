#include <stdint.h>
#include "main.h"
void actuator_init()
{
}
void start_alarm()
{
	Set_Alarm_actuator(0);
}

void stop_alarm()
{
	Set_Alarm_actuator(1);
}