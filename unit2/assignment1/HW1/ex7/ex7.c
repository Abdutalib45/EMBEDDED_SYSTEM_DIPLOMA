
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	float a,b;
	printf("Enter a value for a : ");
	scanf("%f",&a);
    printf("Enter a value for b : ");
	scanf("%f",&b);
	a=a+b;
    b=a-b;
    a=a-b;
    
    printf("After swapping, value of a = %f\n",a);
    printf("After swapping, valu\e of b = %f\n",b);
}
