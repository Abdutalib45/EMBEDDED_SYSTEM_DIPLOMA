#include <stdio.h>
#include <stdlib.h>
void prime_nums(int ,int);
int main()
{
 int x,y;
 printf ("Enter two number(intervals)");
 fflush(stdout);
 scanf("%d%d",&x,&y);
 prime_nums(x,y);
}
void prime_nums(int x,int y)
{
    printf("prime numbers between %d and %d are: ",x,y);
    int i;
    for(;x<=y;x++)
    {
        for(i=2;i<=x;i++)
        {
            if (x%i==0)
            {
                break;
            }
        }
    if (i==x)
    {
        printf("%d ",i);
    }
    }
}
