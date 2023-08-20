#ifndef CA_H_
#define CA_H_

#include "state.h"

void CA_init();
STATE_define(CA_waiting);
STATE_define(CA_driving);

extern void (*CA_state)();





#endif
