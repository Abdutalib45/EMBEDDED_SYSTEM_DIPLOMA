
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	float x,y,z;
	printf("Enter three numbers : ");
	scanf("%f%f%f",&x,&y,&z);
    if (x>=y&&x>=z)
    {
        printf("Largest number = %f",x);
    }
    else if (y>x&&y>=z)
    {
        printf("Largest number = %f",y);
    }
    else if (z>x&&z>y)
    {
        printf("Largest number = %f",z);
    }
}
