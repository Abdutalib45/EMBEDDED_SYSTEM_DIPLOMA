
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	char arr[1000];
    int i,n=0;
    char x;
    printf("Enter string: ");
    gets(arr);
    printf("Enter a character to find frequency: ");
    fflush(stdin);
    scanf("%c",&x);
    for(i=0;i<(int)strlen(arr);i++)
    {
        if (arr[i]==x)
        {
            n++;
        }
    }
    printf("Frequency of %c: %d ",x,n);

}
