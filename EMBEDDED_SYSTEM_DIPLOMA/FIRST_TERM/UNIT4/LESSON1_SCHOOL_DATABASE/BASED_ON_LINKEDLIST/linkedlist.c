/*
 ============================================================================
 Name        : LINKEDLIST.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdlib.h>
#include "linkedlist.h"
#include<stdio.h>

void linkedlist_intialize(linkedlist* pl)
{
	pl->head=NULL;
	pl->length=0;


}
status push (linkedlist * pl,Sdata *student)
{
	node *temp=pl->head;
	pl->head=(node*)malloc(sizeof(node));
	if (pl->head)
	{
	pl->head->next=temp;
	pl->head->info=*student;
	pl->length++;
	return etrue;
	}
	return efalse;
}

status pop(linkedlist * pl,Sdata *data)
{
    if (linkedlist_empty(pl)==etrue)
        {
            return failed;
        }
    *data = pl->head->info;
    linkedlist * temp = pl->head;
    pl->head=pl->head->next;
    pl->length--;
    free(temp);
    return done;

}
status linkedlist_empty (linkedlist*pl)
{
   if (pl->head==null)
    return etrue;
    return efalse;
}
status linkedlist_full (linkedlist*pl)
{
    return efalse;
}
status push_last(linkedlist * pl,Sdata *data)
{
    node * temp = pl->head;
    if (!linkedlist_empty(pl))
    {
         while (temp->next!=NULL)
         {
             temp=temp->next;
         }

    temp->next=(node*)malloc(sizeof(node));
   if (temp->next)
   {
    temp->next->next=NULL;
    temp->next->info=*data;
    pl->length++;
    return done;
   }
    }


    return failed;
}
int linkedlist_size(linkedlist*pl)
{
    if (linkedlist_empty(pl))
    return 0;
    return pl->length;
}
status search_index (linkedlist*pl,Sdata*data,int index)
{
    int count=1;
    node*temp=pl->head;
    while ((index!=count++)&&temp)
    {
        temp=temp->next;
    }
    if (temp)
    {
        *data=temp->info;
        return done;
    }
    return failed;
}
status search_id (linkedlist*pl,Sdata*data,int id)
{
    node*temp=pl->head;
    while (temp->info.id!=id&&temp)
    {
        temp=temp->next;
    }
    if(temp)
    {
        *data=temp->info;
        return done;
    }
    return failed;
}
void print_linkedlist(linkedlist*pl)
{
    if (pl->head==NULL)
        {
            printf("\t list is empty \n");
        }
    else
        {
    node*temp=pl->head;
    while (temp)
    {
        printf("\t%s\n",temp->info.name);
        printf("\t%d\n",temp->info.id);
        printf("\t%f\n",temp->info.height);

    temp=temp->next;
    }
        }
}
void delete_linkedlist(linkedlist*pl)
{
    node*temp=pl->head;
    while(temp)
    {

        temp=temp->next;
        free(pl->head);
        pl->head=temp;
    }
}
status delete_by_id (linkedlist*pl,int id)
{
    node*temp=pl->head;
    while (temp->next->info.id!=id)
    {
        temp=temp->next;
    }
    if(temp)
    {
        node*temp2=temp->next;
        temp->next=temp->next->next;
        free(temp2);
        return done;
    }
    return failed;
}
