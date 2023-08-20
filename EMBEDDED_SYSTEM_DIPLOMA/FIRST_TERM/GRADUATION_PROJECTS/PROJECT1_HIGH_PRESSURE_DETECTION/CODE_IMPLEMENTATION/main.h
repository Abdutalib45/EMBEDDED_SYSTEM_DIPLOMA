#ifndef MAIN_
#define MAIN_
#include "driver.h"

#define state_define(_funct) void st_##_funct()
#define state(_funct) st_##_funct




///////////connictions//////////////
void set_pressure_val(uint32_t);
void high_pressure_detected();
void start_alarm();
void stop_alarm();






















#endif