
#include <stdio.h>        //find digits sum using recursion function                              
int result_sum (int);     
int main()
{
    unsigned int number;
    printf("Enter a number: ");
    fflush(stdout);
    scanf("%u",&number);
    int sum_result=result_sum(number); 
    printf("Sum of digits is %d",sum_result);
    return 0;
}
int result_sum (int number_cpy)
{
    int result;
    if (number_cpy==0)
    {
        result=0;
    }
    else
    {
        result=(number_cpy%10)+result_sum(number_cpy/10);
    }
    return result;
}