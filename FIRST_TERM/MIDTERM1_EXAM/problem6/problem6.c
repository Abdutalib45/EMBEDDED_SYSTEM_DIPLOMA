
#include <stdio.h>
#include <math.h>
#include <string.h>                          
signed int unique_num(signed int* arr,int size);
int main()
{
    signed int arr[100]={0},size,i;
    printf("Enter the array size: ");
    fflush(stdout);
    scanf("%d",&size);
    printf("Enter the array elements: ");
    for(i=0;i<size;i++)
    {
        scanf("%d",arr+i);
    }
    signed int result=unique_num(arr,size);
    printf("THE UNIQUE NUM IS %d",result);
    return 0;
}
signed int unique_num(signed int* arr,int size)
{
    signed int frequency_arr[1000]={0};
    signed int i=0;
    for(;i<size;i++)
    {
        frequency_arr[arr[i]]++;
    }
    for (i=0;i<1000;i++)
    {
        if (frequency_arr[i]==1)
        {
            return i;
        }
    }
    return -1;
}
   