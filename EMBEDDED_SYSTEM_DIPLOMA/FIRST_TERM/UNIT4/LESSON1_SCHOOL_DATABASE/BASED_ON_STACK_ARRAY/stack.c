#include "stack.h"
#include <stdio.h>
#include <stdint.h>
status stack_intialize (Stack*ps)
{
    ps->counter=0;
    return done;
}
status stack_push (Stack*ps,data*pd)
{
    if (stack_full(ps)==efalse)
    {
    ps->arr[ps->counter]=*pd;
    ps->counter++;
    return done;
    }
    return failed;

}
status stack_pop (Stack*ps,data*pd)
{
    if (stack_empty(ps)==efalse)
    {
        ps->counter--;
        *pd=ps->arr[ps->counter];
        return done;
    }
    return failed;

}
status stack_full (Stack*ps)
{
    if (ps->counter>=SIZE-1)
    {
        return etrue;
    }
    return efalse;
}
status stack_empty (Stack*ps)
{
    if (ps->counter==0)
    {
        return etrue;
    }
    return efalse;
}
status stack_delete (Stack*ps)
{
    ps->counter=0;
    return done;
}
status stack_delete_id (Stack*ps,int id)
{
    uint32_t i=0;
    while (ps->arr[i].NUM_NAME!=id&&i<ps->counter)i++;
    if (i<ps->counter)
    {
        for (;i<ps->counter;i++)
        {
            ps->arr[i]=ps->arr[i+1];

        }
        ps->counter--;
        return done;
    }
    return failed;
}
status stack_print_id (Stack*ps,void (*pf)(data*),int id)
{
    if (stack_empty(ps)==etrue)
        return failed;
    uint32_t i=0;
    while(ps->arr[i].NUM_NAME!=id&&i<ps->counter)i++;
    if(i<ps->counter)
    {
        (*pf)(&ps->arr[i-1]);
        return done;
    }
    return failed;

}
status stack_print (Stack*ps,void (*pf)(data*))
{
    if (stack_empty(ps)==etrue)
        return failed;
    uint32_t i=0;
    for(i=0;i<ps->counter;i++)
    (*pf)(&ps->arr[i]);
    return done;
}
