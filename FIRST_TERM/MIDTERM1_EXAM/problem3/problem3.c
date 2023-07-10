
#include <stdio.h>
#include <math.h>                          
void prime_nums_(unsigned int ,unsigned int);     
int main()
{
    unsigned int number1,number2;
    printf("Enter 2 numbers: ");
    fflush(stdout);
    scanf("%u%u",&number1,&number2);
    prime_nums_(number1,number2); 
    return 0;
}
void prime_nums_(unsigned int number1_cpy,unsigned int number2_cpy)
{
    unsigned int counter;
   for (;number1_cpy<=number2_cpy;number1_cpy++)
   {
       for (counter=2;counter<=number1_cpy;counter++)
       {
            if (number1_cpy%counter==0)
            {
                break;
            }
       } 
   if (counter==number1_cpy)
   {
        printf("%u ",number1_cpy);
   }
   }
}