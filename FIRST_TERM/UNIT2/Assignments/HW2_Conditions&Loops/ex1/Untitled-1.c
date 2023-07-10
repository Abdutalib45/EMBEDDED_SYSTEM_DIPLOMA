
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int i;
	printf("Enter a integer you want to check: ");
	scanf("%d",&i);
    i%2==0?printf("%d is even",i):printf("%d is odd",i);
}
