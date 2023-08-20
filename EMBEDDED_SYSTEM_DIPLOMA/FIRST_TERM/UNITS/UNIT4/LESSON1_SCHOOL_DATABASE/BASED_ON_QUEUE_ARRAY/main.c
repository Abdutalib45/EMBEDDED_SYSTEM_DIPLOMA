#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "queue.h"
void display(data*pq)
{
    printf ("***********************\n");
    printf("\t%d\n",pq->NUM_NAME);
    printf("\t%s\n",pq->ARR_NAME);
    printf("\t%.2f\n",pq->VAL_NAME);
    printf ("***********************\n");
}
int main()
{
    int choice,id;
    float heigth;
    Queue school;
    data student;
    queue_intialize(&school);
    while (1)
    {

	printf("ENTER :\n\t1-ADD STUDENT\n\t2-REMOVE STUDENT\n\t3-VIEW STUDENTS\n\t4-DELETE ALL\n");
	scanf("%d",&choice);
	data temp;
	switch (choice)
	{
	case 1:
	    if (queue_full(&school)==etrue)
        {
            printf("--COMPLETED--\n");
            break;
        }


	    printf("ENTER STUDENT NAME :\n");
        fflush(stdin);
	    gets(student.ARR_NAME);
	    printf("ENTER STUDENT ID :\n");
	    scanf("%d",&student.NUM_NAME );
	    printf("ENTER STUDENT HEIGTH :\n");
	    scanf("%f",&student.VAL_NAME );
	    queue_push(&school,&student);
	    break;
    case 2:
        printf("ENTER STUDENT ID\n");
        scanf("%d",&id);
        if (queue_delete_id(&school,id)!=done)
            printf("WRONG ID\n");
        break;
    case 3:
        if(queue_print(&school,&display)==failed)
            printf(">>> THERE IS NO STUDENTS <<<\n");
        break;
    case 4:
        queue_delete(&school);
        break;
	}
    }
	return 0;

}
