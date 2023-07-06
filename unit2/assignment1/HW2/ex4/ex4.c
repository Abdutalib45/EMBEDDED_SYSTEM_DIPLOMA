
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	float x;
	printf("Enter a number : ");
	scanf("%f",&x);
    if (x>0)
    {
        printf("%f is positive.\n",x);
    }
    else if (x<0)
    {
        printf("%f ia negative.",x);
    }
    else
    {
        printf("You entered zero.");
    }
}
