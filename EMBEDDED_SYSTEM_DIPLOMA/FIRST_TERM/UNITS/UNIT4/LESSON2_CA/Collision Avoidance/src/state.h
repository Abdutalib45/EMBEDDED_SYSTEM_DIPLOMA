#ifndef STATE_H_
#define  STATE_H_


#define STATE_define(_statefun_)  void ST_##_statefun_()
#define STATE(_statefun_)  		  ST_##_statefun_
#include<stdio.h>
#include<stdlib.h>
void US_set_distance (int d);
void DC_motor (int s);












#endif
