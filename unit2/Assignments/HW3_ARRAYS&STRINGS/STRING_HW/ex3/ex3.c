
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	char arr[1000];
    int i=0,temp;
    printf("Enter string: ");
    gets(arr);
    for (i=0;i<strlen(arr)/2;i++)
    {
    temp=arr[strlen(arr)-1-i];
    arr[strlen(arr)-1-i]=arr[i];
    arr[i]=temp;
     i++;
    }
    puts(arr);
}
