#ifndef _STACK_
#define _STACK_
#include "configuration.h"
#include <stdint.h>
typedef struct data{

ENTRY ARR_NAME[SIZE];
ENTRY2 NUM_NAME;  ////
ENTRY3 VAL_NAME;

}data;


typedef struct Stack{
    data arr[100];
    int counter;

}Stack;
typedef enum{
    etrue,
    efalse,
    done,
    failed



}status;
status stack_intialize (Stack*ps);
status stack_push (Stack*ps,data*pd);
status stack_pop (Stack*ps,data*pd);
status stack_full (Stack*ps);
status stack_empty (Stack*ps);
status stack_delete (Stack*ps);
status stack_delete_id (Stack*ps,int id);
status stack_print_id (Stack*ps,void (*pf)(data*),int id);
status stack_print (Stack*ps,void (*pf)(data*));














#endif // _STACK_
