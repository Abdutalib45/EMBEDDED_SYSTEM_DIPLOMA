#define AREA(X) 3.14*X*X 
#include <stdio.h>
int main ()
{
    float area,r;
    printf("Enter the redius: ");
    scanf("%f",&r);

    area =AREA(r);
    printf("Area=%0.2f",area);
}