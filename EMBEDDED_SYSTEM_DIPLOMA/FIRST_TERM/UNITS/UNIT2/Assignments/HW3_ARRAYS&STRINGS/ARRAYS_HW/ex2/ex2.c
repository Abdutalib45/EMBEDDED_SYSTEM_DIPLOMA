
#include <stdio.h>
#include <stdlib.h>

int main(void) {
float arr[100],sum=0;
int i,n;
printf("Enter the number of data : ");
scanf("%d",&n);
for (i=0;i<n;i++)
{
    printf("%d.Enter number: ",i+1);
    scanf("%f",&arr[i]);
    sum+=arr[i];
}
printf("Average = %0.2f",sum/n);
}
