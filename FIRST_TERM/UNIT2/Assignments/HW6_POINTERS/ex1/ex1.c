#include <stdio.h>
int main ()
{
    unsigned int m=29,*ab;
    printf("Address of m is %x\n",&m);
    printf("value of m = %u\n",m);
    ab=&m;
    printf("Address of pointer ab is %x\n",ab);
    printf("content of pointer is %u\n",*ab);
    m=34;
    printf("Address of pointer ab is %x\n",ab);
    printf("content of pointer is %u\n",*ab);
    *ab=7;
    printf("Address of pointer ab is %x\n",ab);
    printf("content of pointer is %u\n",*ab);        
}