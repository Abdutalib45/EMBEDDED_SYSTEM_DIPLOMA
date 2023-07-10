#include <stdio.h>
#include <stdlib.h>
long long fact (int x);
int main()
{
 int x;   
 printf("Enter an positivr integer: ");
 scanf("%d",&x);
 printf("Factorial of %d is: %lld",x,fact(x));
}
long long fact (int x)
{
    if (x<=1)
    return 1;
    return x*fact(x-1);
    
}