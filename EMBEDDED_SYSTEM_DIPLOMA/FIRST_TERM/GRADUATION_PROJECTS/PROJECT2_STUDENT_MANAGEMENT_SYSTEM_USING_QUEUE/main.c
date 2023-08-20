#include <stdio.h>
#include <stdint.h>
#include "share.h"
#include <string.h>
#include "queue.h"
#include <conio.h>
Queue student;
info data;
void main ()
{
    FILE *pf;
    queue_intialize(&student);
	int i,temp,lines=1;
	char name[50];
	printf("Welcome To The Student Management System\n----------------\n\n");
	while(1)
	{
		uint32_t choice;
		printf("Choose The Task that you want to perform\n");
		printf("1. Add The Student Details Manually\n");
		printf("2. Add The Student Details From Text File\n");
		printf("3. Find The Student Details By Roll Number\n");
		printf("4. Find The Student Details By First Name\n");
		printf("5. Find The Student Details By Course Id\n");
		printf("6. Find The Total Number Of Students\n");
		printf("7. Delete The Student Details By Roll Number\n");
		printf("8. Update The Student Details By Roll Number\n");
		printf("9. Show all information\n");
		printf("10. To Exit\n--------------\n\n");
		printf("Enter Your Choice To Perform The Task: ");
		scanf("%d",&choice);
		printf("------------\n");
		switch (choice)
		{
			case 1 :
					printf("Add the student details\n-----------\n");
					printf("Enter roll number: ");
					scanf("%d",&data.roll);
					printf("Enter the first name of the student: ");
					scanf("%s",data.fname);
					printf("Enter the last name of the student: ");
					scanf("%s",data.lname);
					printf("Enter the GPA you obtained: ");
					scanf("%f",&data.GPA);
					printf("Enter the course id of each course: \n");
					fflush(stdin);
					for (i=0;i<5;i++)
					{
					printf("Course %d id: ",i+1);
					scanf(" %d",&data.cid[i]);

					}
					if(add_student_manually(&student,&data)==done)
					{
						printf("[INFO] Student Roll Number %d Is Added Successfully\n------------\n",data.roll);
						temp= tot_s(&student);
						printf("[INFO] The Total Number Of Students is :%d\n",temp);
						printf("[INFO] You Can Add Up To %d\n",MAX);
						printf("[INFO] You Can Add %d More Students\n",MAX-temp);
					}
					break;
			case 2 :
                    pf=fopen("file.txt","r");
                    while (!feof(pf))
                    {
                        if(fgetc(pf)=='\n')
                           {
                               lines++;
                           }
                    }
                    printf("######### %d ###########\n",lines);
                    pf=fopen("file.txt","r");
                    for(i=0;i<lines;i++)
                    {
                        fscanf(pf,"%d %s %s %f %d %d %d %d %d\n",&data.roll,data.fname,data.lname,&data.GPA,&data.cid[0],&data.cid[1],&data.cid[2],&data.cid[3],&data.cid[4]);
                        if(add_student_manually(&student,&data)==done)
                        {
						printf("[INFO] Student Roll Number %d Is Added Successfully\n------------\n",data.roll);

                        }
                    }
                    temp= tot_s(&student);
					printf("\n---------\n[INFO] The Total Number Of Students is :%d\n",temp);
					printf("[INFO] You Can Add Up To %d\n",MAX);
					printf("[INFO] You Can Add %d More Students\n---------\n",MAX-temp);
                    fclose(pf);

					break;
			case 3 :
					printf("Enter The Roll Number Of The Student: ");
					scanf("%d",&temp);
					if(find_rl(&student,temp)!=done)
					{
						printf("[ERROR] Roll Number %d Not Found\n",temp);
					}

					break;

			case 4 :

					printf("Enter the first name of the student: ");
					scanf("%s",name);
					if(find_fn(&student,name)==failed)
					{
						printf("[ERROR] First Name %s Not Found\n",name);
					}
					break;
			case 5 :
					printf("Enter the course id: ");
					scanf("%d",&temp);
					if(find_c(&student,temp)==failed)
					{
						printf("[ERROR] Course Id %d Not Found\n",temp);

					}

					break;
			case 6 :
					temp= tot_s(&student);
					printf("\n---------\n[INFO] The Total Number Of Students is :%d\n",temp);
					printf("[INFO] You Can Add Up To %d\n",MAX);
					printf("[INFO] You Can Add %d More Students\n---------\n",MAX-temp);
					break;
			case 7 :
					printf("Enter The Roll Number Which You Want To Delete: ");
					scanf("%d",&temp);
					if(del_s(&student,temp)==failed)
					{
						printf("[ERROR] This Roll Number %d not Found\n",temp);
					}
					else
					{
						printf("[INFO] The Roll Number %d is removed Successfully\n",temp);
					}
					break;
			case 8 :
					printf("Enter The Roll Number To Update The Entry: ");
					scanf("%d",&temp);
					up_s(&student,temp);
					break;
			case 9 :
					show_s(&student);
					break;
			case 10 :
                    printf("\n---------\nHave a Nice Time\n---------\n");
                    return;
					break;

		}

	}
}
