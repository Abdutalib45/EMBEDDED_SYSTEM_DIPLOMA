
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	float a,b,temp;
	printf("Enter a value for a : ");
	scanf("%f",&a);
    printf("Enter a value for b : ");
	scanf("%f",&b);
	temp=a;
    a=b;
    b=temp;
    printf("After swapping, value of a = %f\n",a);
    printf("After swapping, value of b = %f\n",b);
}
