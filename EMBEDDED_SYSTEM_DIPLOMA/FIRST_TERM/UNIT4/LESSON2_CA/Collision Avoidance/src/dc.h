#ifndef  DC_H_
#define  DC_H_

#include "state.h"

void DC_init();
STATE_define (DC_idle);
STATE_define (DC_busy);

extern void (*DC_state)();





#endif
