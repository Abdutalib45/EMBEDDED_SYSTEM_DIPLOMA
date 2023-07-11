
#include <stdio.h>
#include <math.h>
#include <string.h>                          
void reverse_array(signed int *,int);
int main()
{
    signed int arr[100],size,i;
    printf("Enter the array size: ");
    scanf("%d",&size);
    printf("Enter the array elements: ");
    for (i=0;i<size;i++)
    {
        scanf("%d",arr+i);
    }
    reverse_array(arr,size);
    for (i=0;i<size;i++)
    {
        printf("%d ",arr[i]);
    }
}
void reverse_array(signed int *arr,int size)
{
    signed int i=0,temp;
    for(;i<size/2;i++)
    {
        temp=arr[i];
        arr[i]=arr[size-1-i];
        arr[size-1-i]=temp;
    }
}