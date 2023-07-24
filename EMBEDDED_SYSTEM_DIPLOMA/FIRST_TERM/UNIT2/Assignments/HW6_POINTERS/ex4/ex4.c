#include <stdio.h>
#include <string.h>
void reverse_arr(int *arr,int n);

int main ()
{
    int i,arr[50],n;
    printf("Enter the array size : ");
    scanf("%d",&n);
    for (i=0;i<n;i++)
    {
        scanf("%d",arr+i);
    } 
    reverse_arr(arr,n);
    for (i=0;i<n;i++)
    {
        printf("%d ",*(arr+i));
    } 
}
void reverse_arr(int *arr,int n)
{
    int i,temp;
    for (i=0;i<n/2;i++)
    {
        temp=arr[i];
        arr[i]=arr[n-1-i];
        arr[n-1-i]=temp;

    }
}