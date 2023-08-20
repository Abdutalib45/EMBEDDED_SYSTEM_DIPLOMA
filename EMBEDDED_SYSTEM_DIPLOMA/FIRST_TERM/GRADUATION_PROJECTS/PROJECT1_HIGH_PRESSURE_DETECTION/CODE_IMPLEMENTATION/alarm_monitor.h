#ifndef ALARM_MONITOR
#define ALARM_MONITOR

state_define(alarm_off);
extern void (*am_state)();
state_define(alarm_on);
state_define(am_waiting);
#endif