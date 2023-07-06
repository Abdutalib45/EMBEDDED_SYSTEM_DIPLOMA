
#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int arr[100];
    int i,x,n;
    printf("Enter no of elements: ");
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }
    printf("Enter the element to be searched: ");
    scanf("%d",&x);
    for(i=0;i<n;i++)
    {
        if (arr[i]==x)break;

    }
    if (i!=n)
    printf("Number found at the location: %d",i+1);
    else
    printf("Not found");
}
