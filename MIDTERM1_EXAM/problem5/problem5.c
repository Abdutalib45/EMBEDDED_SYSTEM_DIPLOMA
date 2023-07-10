
#include <stdio.h>
#include <math.h>
#include <string.h>                          
signed int count_binary(signed int);   
int main()
{
    signed int num;
    printf("Enter a number: ");
    fflush(stdout);
    scanf("%d",&num);
    signed int result=count_binary(num);
    printf("NUMBER OF ONES FOR %d IS %d",num,result);
    return 0;
}
signed int count_binary(signed int num)
{
    signed int count=0,i=0;
    for(;i<=31;i++)
    {
        if ((num&(1u<<i))>>i==1)
        {
            count++;
        }
    }
return count;
}
   