#include <stdio.h>
struct Sstudent
{
    char name[50];
    int roll;
    float marks;
};
int main ()
{
    struct Sstudent student;
    printf("Enter information of students:\n");
    printf("Enter name: ");
    gets (student.name);
    printf("Enter roll number: ");
    scanf("%d",&student.roll);
    printf("Enter Marksr: ");
    scanf("%f",&student.marks);
    printf("Displaying Information\n");
    printf("name: %s\n",student.name);
    printf("ROLL: %d\n",student.roll);
    printf("MARKS: %0.2f",student.marks);
    return 0;
}