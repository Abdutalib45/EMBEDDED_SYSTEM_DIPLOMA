#include <stdio.h>
#include <stdlib.h>
#include <string.h>
long long power(int,int);
int main()
{
 int x,y;   
 printf("Enter base number: ");
 scanf("%d",&x);
  printf("Enter power number(positive integer): ");
 scanf("%d",&y);
 long long pow=power(x,y);
 printf("%d^%d = %lld",x,y,pow);
}
long long power(int x,int y)
{
   if (y==1)
   return x;
   return x*power(x,y-1);  
}