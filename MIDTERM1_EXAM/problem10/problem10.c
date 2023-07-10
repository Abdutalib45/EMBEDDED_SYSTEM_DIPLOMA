
#include <stdio.h>
#include <math.h>
#include <string.h>                          
int count_max_ones(int num);
int main()
{
    signed int num;
    printf("Enter a number: ");
    scanf("%d",&num);
    printf("the max ones equal %d",count_max_ones(num));
}
int count_max_ones(int num)
{
    signed int i=0,flag=0,count=0,new_count=-100000;
    for(;i<32;i++)
    {
        count=0;
        flag=0;
        if ((num&(1<<i))>>i==0)
        {
            flag=1;
            i++;
        }
        if (flag==1)
        {
            while((num&(1u<<i))>>i!=0)
            {
                count++;
                i++;
            }
            if (new_count<count)
                  new_count=count;
                
        }
    }
    return new_count;
}