#include <stdio.h>
#include <string.h>
int main ()
{
 int i;   
 char arr[70];
 printf("Enter a string :");
 gets(arr);
 char*ptr=arr;
 for (i=strlen(arr)-1;i>=0;i--)
 {
    printf("%c",ptr[i]);
 }
}  