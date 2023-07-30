#include "linkedlist.h"
#include<stdio.h>
void display (Sdata*pd)
{   printf("********************\n");
    printf("%d\n",pd->NUM_NAME);
    printf("%s\n",pd->ARR_NAME);
    printf("%.2f\n",pd->VAL_NAME);
    printf("********************\n");
}
int main()
{
    int choice,id,n;
    float height;
    linkedlist school;
    Sdata student,temp;
    linkedlist_intialize(&school);
    while (1)
    {

	printf("ENTER :\n\t1-ADD STUDENT\n\t2-REMOVE STUDENT\n\t3-VIEW STUDENTS\n\t4-DELETE ALL\n\t5-GET N REVERSE\n");
    fflush(stdin);
	scanf("%d",&choice);
	switch (choice)
	{
	case 1:
	    printf("ENTER STUDENT NAME :\n");
        fflush(stdin);
	    gets(student.ARR_NAME);
	    printf("ENTER STUDENT ID :\n");
	    scanf("%d",&student.NUM_NAME);
	    printf("ENTER STUDENT HEIGHT :\n");
	    scanf("%f",&student.VAL_NAME);
	    push(&school,&student);
	    break;
    case 2:
        printf("ENTER STUDENT ID\n");
        scanf("%d",&id);
        if (delete_by_id (&school,id)!=done)
            printf("--WRONG ID--\n");
        break;
    case 3:
        print_linkedlist(&school,&display);
        break;
    case 4:
        delete_linkedlist(&school);
        break;
	case 5:
	    scanf("%d",&n);
	    GetNth(&school,&student,2);
	    display(&student);


	}
    }
	return 0;

}
