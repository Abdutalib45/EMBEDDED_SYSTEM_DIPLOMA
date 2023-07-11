#include <stdio.h>
struct Sstudent
{
    char name[50];
    int roll;
    float marks;
};
int main ()
{
    int i;
    struct Sstudent student[10];
    printf("Enter information of students:\n");
    for (i=0;i<10;i++)
    {
        fflush(stdin);
        printf("Enter name: ");
        gets (student[i].name);
        printf("Enter roll number %d: ",i+1);
        scanf("%d",&student[i].roll);
        printf("Enter Marks: ");
        scanf("%f",&student[i].marks);
    }
    printf("Displaying Information\n");
    for (i=0;i<10;i++)
    {
        printf("roll number %i: %i\n",i+1,student[i].roll);
        printf("name: %s\n",student[i].name);
        printf("MARKS: %0.2f\n",student[i].marks);
    }



    return 0;
}
