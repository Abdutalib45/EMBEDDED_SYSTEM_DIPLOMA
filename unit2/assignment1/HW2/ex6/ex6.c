
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int x,i;
    long long sum=0;
	printf("Enter an integer number : ");
	scanf("%d",&x);
    for (i=1;i<=x;i++)
    {
        sum+=i;
 
    }
    printf("sum = %lldl\n",sum);
}
