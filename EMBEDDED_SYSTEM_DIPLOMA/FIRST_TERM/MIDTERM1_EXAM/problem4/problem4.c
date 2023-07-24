
#include <stdio.h>
#include <math.h>
#include <string.h>                          
void reversr_number(char*);   
int main()
{
    signed char number[1000];
    printf("Enter a number to reverse: ");
    fflush(stdout);
    gets(number);
    reversr_number(number);
    signed int reversed_num=atoi(number);
    printf("%d",reversed_num);
    return 0;
}
void reversr_number(char*number)
{
    signed int i,temp,size=strlen(number);
    for (i=0;i<strlen(number)/2;i++)
    {
        temp=number[i];
        number[i]=number[size-1-i];
        number[size-1-i]=temp;
    }
}