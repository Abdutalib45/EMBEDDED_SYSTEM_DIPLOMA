
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	char x;
	printf("Enter a character : ");
	scanf("%c",&x);
    if (x>='a'&&x<='z'||x>='A'&&x<='Z')
    {
        printf("%c is an alphabet.\n",x);
    }
    else
    {
        printf("it is not an alphabet.\n");
    }
}
