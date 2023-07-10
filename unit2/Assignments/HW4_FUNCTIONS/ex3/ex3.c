#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void reverse_string (char*,int);
int main()
{
 char arr[1000];   
 printf("Enter a sentence: ");
 gets(arr);
reverse_string (arr,strlen(arr));
}
void reverse_string (char*arr,int n)
{
 if (n==0);
  else
  {
    printf("%c",arr[n-1]);
    reverse_string (arr,n-1);   
  }  
}