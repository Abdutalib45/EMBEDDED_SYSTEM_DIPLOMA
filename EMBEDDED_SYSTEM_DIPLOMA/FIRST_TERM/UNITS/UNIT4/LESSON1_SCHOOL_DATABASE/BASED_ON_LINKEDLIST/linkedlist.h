#ifndef _LINKEDLIST_
#define _LINKEDLIST_
#include <stdint.h>
#include "configuration.h"

typedef struct Sdata{
	ENTRY ARR_NAME [40];
	ENTRY2 NUM_NAME;
	ENTRY3 VAL_NAME;
}Sdata;
typedef struct Snode {
	Sdata info;
	struct Snode * next;
}node;
typedef struct linkedlist
{
	node * head;
	int length;
}linkedlist;

typedef enum{
	efalse,
	etrue,
	failed,
	done,
}status;

void linkedlist_intialize(linkedlist* pl);
status push (linkedlist * pl,Sdata *student);
status linkedlist_empty (linkedlist*pl);
status pop(linkedlist * pl,Sdata *data);
status linkedlist_full (linkedlist*pl);
status push_last(linkedlist * pl,Sdata *data);
int linkedlist_size(linkedlist*pl);
status search_index (linkedlist*pl,Sdata*data,int index);
status search_id (linkedlist*pl,Sdata*data,int id);
status print_linkedlist(linkedlist*pl,void (*pf)(Sdata*));
void delete_linkedlist(linkedlist*pl);
status delete_by_id (linkedlist*pl,int id);
status GetNth(linkedlist*pl,Sdata*data,int index);

#endif
