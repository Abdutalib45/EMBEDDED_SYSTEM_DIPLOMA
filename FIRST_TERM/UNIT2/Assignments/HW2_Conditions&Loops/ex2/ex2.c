
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	char i;
	printf("Enter an alphapet : ");
	scanf("%c",&i);
    if (i=='a'||i=='e'||i=='i'||i=='o'||i=='u'||i=='A'||i=='E'||i=='I'||i=='O'||i=='U')
    {
        printf("%c is a vowel.\n",i);
    }
    else 
    {
        printf("%c ia a consonant",i);
    }
}
