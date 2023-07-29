#include "linkedlist.h"
#include<stdio.h>
int main()
{
    int choice,id;
    float heigth;
    linkedlist student;
    Sdata dstudent;
    linkedlist_intialize(&student);
    while (1)
    {

	printf("ENTER :\n\t1-ADD STUDENT\n\t2-REMOVE STUDENT\n\t3-VIEW STUDENTS\n\t4-DELETE ALL\n");
	scanf("%d",&choice);
	Sdata temp;
	switch (choice)
	{
	case 1:
	    printf("ENTER STUDENT NAME :\n");
        fflush(stdin);
	    gets(dstudent.name);
	    printf("ENTER STUDENT ID :\n");
	    scanf("%d",&dstudent.id);
	    printf("ENTER STUDENT HEIGTH :\n");
	    scanf("%f",&dstudent.height);
	    push(&student,&dstudent);
	    break;
    case 2:
        printf("ENTER STUDENT ID\n");
        scanf("%d",temp);
        if (delete_by_id (&student,id)!=done)
            printf("wrong id");
        break;
    case 3:
        print_linkedlist(&student);
        break;
    case 4:
        delete_linkedlist(&student);
        break;
	}
    }
	return 0;

}
