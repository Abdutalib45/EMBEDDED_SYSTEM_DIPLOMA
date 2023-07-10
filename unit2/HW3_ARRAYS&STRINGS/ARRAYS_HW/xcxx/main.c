#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int search_array(char*a);
int main()
{
char a[]="123344";
int x=strlen(a);
search_array(a);
for (int i=0;i<x;i++)
{
    printf("%d\n",a[i]*2);
}
}
int search_array(char*a)
{
  int i=0,temp=-1;
  for (i=0;i<strlen(a);i++)
  {
    a[i]-=48;

  }

}
