#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "stack.h"
void display(data*pd)
{
    printf ("***********************\n");
    printf("\t%d\n",pd->NUM_NAME);
    printf("\t%s\n",pd->ARR_NAME);
    printf("\t%.2f\n",pd->VAL_NAME);
    printf ("***********************\n");
}
int main()
{
    int choice,id;
    float heigth;
    Stack school;
    data student;
    stack_intialize(&school);
    while (1)
    {

	printf("ENTER :\n\t1-ADD STUDENT\n\t2-REMOVE STUDENT\n\t3-VIEW STUDENTS\n\t4-DELETE ALL\n");
	scanf("%d",&choice);
	data temp;
	switch (choice)
	{
	case 1:
	    printf("ENTER STUDENT NAME :\n");
        fflush(stdin);
	    gets(student.ARR_NAME);
	    printf("ENTER STUDENT ID :\n");
	    scanf("%d",&student.NUM_NAME );
	    printf("ENTER STUDENT HEIGTH :\n");
	    scanf("%f",&student.VAL_NAME );
	    stack_push(&school,&student);
	    break;
    case 2:
        printf("ENTER STUDENT ID\n");
        scanf("%d",&id);
        if (stack_delete_id(&school,id)!=done)
            printf("wrong id");
        break;
    case 3:
        if(stack_print(&school,&display)==failed)
            printf(">>> THERE IS NO STUDENTS <<<\n");
        break;
    case 4:
        stack_delete(&school);
        break;
	}
    }
	return 0;

}
