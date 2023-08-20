#ifndef PRESSURE_SENSOR
#define PRESSURE_SENSOR



extern void (*ps_state)();
state_define(ps_waiting);
state_define(ps_reading);
void ps_init();
























#endif