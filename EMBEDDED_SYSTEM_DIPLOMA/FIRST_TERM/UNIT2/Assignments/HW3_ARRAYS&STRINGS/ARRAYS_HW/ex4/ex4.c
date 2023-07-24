
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int arr[6];
    int i,x,n,h;
    printf("Enter number of elements: ");
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }
printf("Enter the element to be inserted: ");
scanf("%d",&x);
printf("Enter the location: ");
scanf("%d",&h);
for (i=n-1;i>=0;i--)
{
    if (i+1>h-1)
    {
      arr[i+1]=arr[i];
    }
    else if (i+1==h-1)
    {
        arr[i+1]=x;
    }
}
for (i=0;i<=n;i++)
{
    printf("%d ",arr[i]);
}
}
