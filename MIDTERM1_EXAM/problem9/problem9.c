
#include <stdio.h>
#include <math.h>
#include <string.h>
signed int index_=0;
void reverse_array(signed char *arr,signed char *arr2);
void separate_strings(signed char*);
int main()
{
    signed char arr[100],arr2[100];
    printf("Enter a string: ");
    gets((char*)arr);
    reverse_array(arr,arr2);
    printf("%s",(char*)arr2);

}

void separate_strings(signed char*arr)
{
    signed int i=0;
    for (;i<(int)strlen((char*)arr);i++)
    {
        if (arr[i]==' ')
        break;
    }
    arr[i]=0;
    i++;
    index_=i;

}
void reverse_array(signed char *arr,signed char *arr2)
{
    separate_strings(arr);
    strcpy((char*)arr2,(char*)arr+index_);
    strcat((char*)arr2," ");
    strcat((char*)arr2,(char*)arr);
}
