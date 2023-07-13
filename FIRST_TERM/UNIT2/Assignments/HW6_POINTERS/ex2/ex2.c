#include <stdio.h>
int main ()
{
    int i;
    char x='A';
    char*ptr=&x;
    for(i=0;i<26;i++)
    printf("%c ",(*ptr)++);

}