
#include <stdio.h>
#include <math.h>                          
float square_root_calc (float);     
int main()
{
    float number;
    printf("Enter a number: ");
    fflush(stdout);
    scanf("%f",&number);
    float sqr_root=square_root_calc(number); 
    printf("%.3f square root is %.3f",number,sqr_root);
    return 0;
}
float square_root_calc (float number_cpy)
{
    float result=sqrt(number_cpy);
    return result;
}
    
