#include "queue.h"
#include "stdint.h"
status queue_intialize (Queue*pq)
{
    pq->counter=0;
    pq->head=0;
    pq->tail=-1;
}
status queue_push (Queue*pq,data*pd)
{
    if(queue_full(pq)==etrue)
        return failed;
    pq->tail=(pq->tail+1)%SIZE;
    pq->arr[pq->tail]=*pd;
    pq->counter++;
    return done;
}
status queue_pop (Queue*pq,data*pd)
{
    if(queue_empty(pq)==etrue)
        return failed;
    *pd=pq->arr[pq->head];
    pq->head=(pq->head+1)%SIZE;
    pq->counter--;
    return done;
}
status queue_print (Queue*pq,void(*pf)(data*))
{
    int i=pq->head,s=0;
    if(queue_empty(pq)==etrue)
        return failed;
    for (;s<pq->counter;s++,i=(i+1)%SIZE)
    {
        (*pf)(&pq->arr[i]);
    }
    return done;
}
status queue_print_id (Queue*pq,void(*pf)(data*),int id)
{
    int i=pq->head,s=0;
    if(queue_empty(pq)==etrue)
        return failed;
    for (;s<pq->counter&&id!=pq->arr[i].NUM_NAME;s++,i=(i+1)%SIZE);
    if (s<pq->counter)
    {
        (*pf)(&pq->arr[i]);
        return done;
    }
    return failed;
}



status queue_full (Queue*pq)
{
    if (pq->counter==SIZE)
        return etrue;
    return efalse;
}
status queue_empty (Queue*pq)
{
    if (pq->counter==0)
        return etrue;
    return efalse;
}
status queue_delete (Queue*pq)
{
    pq->counter=0;
    pq->head=0;
    pq->tail=-1;
}
status queue_delete_id (Queue*pq,int id)
{
    int i=pq->head,s=0;
    if(queue_empty(pq)==etrue)
        return failed;
    for (;s<pq->counter&&id!=pq->arr[i].NUM_NAME;s++,i=(i+1)%SIZE);
    if (s>=pq->counter)
        return failed;
    while(s++<pq->counter)
    {
        pq->arr[i]=pq->arr[i+1];
        i=(i+1)%SIZE;
    }
    pq->counter--;
    pq->tail--;

    return done;
}
