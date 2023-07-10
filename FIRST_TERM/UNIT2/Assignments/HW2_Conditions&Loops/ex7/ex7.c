
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int x,i;
    long long fact=1;
	printf("Enter an integer number : ");
	scanf("%d",&x);
    
    for (i=1;i<=x&&x>=0;i++)
    {
        fact*=i;
 
    }
    if (i!=1)
    printf("fact = %lld\n",fact);
    else
    printf("Error!!! factorial of negative number doesnt exist.");
}

