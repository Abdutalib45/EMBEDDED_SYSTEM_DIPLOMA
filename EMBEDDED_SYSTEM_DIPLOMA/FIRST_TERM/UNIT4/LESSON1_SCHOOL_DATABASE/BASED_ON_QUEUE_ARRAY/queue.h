#ifndef _QUEUE
#define _QUEUE
#include "configuration.h"
typedef struct data{

    ENTRY ARR_NAME [SIZE];
    ENTRY2 NUM_NAME;
    ENTRY3 VAL_NAME;


}data;
typedef struct Queue{

    data arr[100];
    int head;
    int tail;
    int counter;


}Queue;

typedef enum{
    efalse,
    etrue,
    done,
    failed


}status;
status queue_intialize (Queue*pq);
status queue_push (Queue*pq,data*pd);
status queue_pop (Queue*pq,data*pd);
status queue_print (Queue*pq,void(*pf)(data*));
status queue_print_id (Queue*pq,void(*pf)(data*),int id);
status queue_full (Queue*pq);
status queue_empty (Queue*pq);
status queue_delete (Queue*pq);
status queue_delete_id (Queue*pq,int id);
#endif
