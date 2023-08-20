#include <stdio.h>
#include <stdlib.h>
#include "dc.h"
#include "ca.h"
#include "us.h"



void setup()
{
    US_init();
    DC_init();
    CA_state = STATE(CA_waiting);
    DC_state = STATE(DC_idle);
    US_state = STATE(US_busy);

}
int main()
{
    volatile int d;
    setup();
    while(1)
   {

        US_state();
        CA_state();
        DC_state();
   }

    return 0;
}
