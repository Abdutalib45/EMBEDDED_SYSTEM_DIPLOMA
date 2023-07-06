
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	char arr[1000];
    int i=0,n=0;
    printf("Enter string: ");
    gets(arr);
    while(arr[i++]!=0)
    {
        n++;
    }
    printf("Length of string: %d",n);
}
