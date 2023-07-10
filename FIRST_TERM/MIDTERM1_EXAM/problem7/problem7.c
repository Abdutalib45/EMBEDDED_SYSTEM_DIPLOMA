
#include <stdio.h>
#include <math.h>
#include <string.h>                          
signed int sum_1_to_num(signed int num);
int main()
{
    signed int num;
    printf("Enter a num: ");
    scanf("%d",&num);
    signed int sum=sum_1_to_num(num);
    printf("SUM FROM 1 TO %d IS %d",num,sum);
}
signed int sum_1_to_num(signed int num)
{
    if (num==1)
    return 1;
    else
    {
        return num+sum_1_to_num(num-1);
    }
}