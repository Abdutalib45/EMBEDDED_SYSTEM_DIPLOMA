
#include <stdio.h>
#include <stdlib.h>

int main(void) {
int arr[100][100];
int i,y,z,j;
printf("Enter rows and colums of the matrix: ");
scanf("%d%d",&y,&z);
printf("Enter elements of the matrix: \n");
for (i=0;i<y;i++)
{
    for (j=0;j<z;j++)
    {
        printf("Enter elements a%d%d: ",i+1,j+1);
        scanf("%d",&arr[i][j]);
    }

}
printf("Enterd Matrix: \n");
for (i=0;i<y;i++)
{
    for (j=0;j<z;j++)
    {
        printf("%d  ",arr[i][j]);
    }
    printf("\n");
}
for (i=0;i<y;i++)
{
    for (j=0;j<z;j++)
    {
       arr[j][i]=arr[i][j];
    }

}
printf("Transpose of matrix : \n");
for (i=0;i<z;i++)
{
    for (j=0;j<y;j++)
    {
        printf("%d  ",arr[i][j]);
    }
    printf("\n");
}
}