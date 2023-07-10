
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	float x,y;
    double result;
    char op;
	printf("Enter an operator + or * or - or divide : ");
	scanf("%c",&op);
    printf("Enter two operands:");
    scanf("%f%f",&x,&y);
    switch (op)
    {
     case '+':
     printf("%0.2f + %0.2f = %0.2lf",x,y,x+y);
     break;
     case '-':
     printf("%0.2f - %0.2f = %0.2lf",x,y,x-y);
     break;
     case '*':
     printf("%0.2f * %0.2f = %0.2lf",x,y,x*y);
     break;
     case '/':
     printf("%0.2f / %0.2f = %0.2lf",x,y,x/y);
     break;
    }
}
