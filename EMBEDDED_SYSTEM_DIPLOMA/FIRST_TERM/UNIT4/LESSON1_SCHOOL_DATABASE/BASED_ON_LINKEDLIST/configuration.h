#ifndef _CONFIGURATION_
#define _CONFIGURATION_
/*
    ####  FUNCTIONS  INFO ####




status node_intialize(node * pn);                                     >>>>> intialize node
status push (node * pn);                                              >>>>> add node at first
status linkedlist_empty (linkedlist*pl);                              >>>>> return etrue if list is empty & efalse if full
status pop(likedlist * pl,Sdata *data);                               >>>>> remove node at first
status linkedlist_full (linkedlist*pl);                               >>>>> return etrue if list is full & efalse if empty
status push_last(likedlist * pl,Sdata *data);                         >>>>> add node at last
int linkedlist_size(linkedlist*pl);                                   >>>>> return length of list
status search_index (linkedlist*pl,Sdata*data,int index);             >>>>> find the node by index
status search_id (linkedlist*pl,Sdata*data,int id);                   >>>>> find the node by id




*/
/*
>>>>    choose data type of members
>>>>    notice there is a function "search_id" based on "id" member name


*/
typedef struct Sdata{
	int id;
	char name [40];
	float height;
}Sdata;













#endif // _CONFIGURATION_
