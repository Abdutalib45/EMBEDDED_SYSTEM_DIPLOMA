#include <stdio.h>
struct Sdistance
{
    float feet;
    float inch;
};
int main ()
{
    struct Sdistance distance1,distance2,total;
    printf("Enter information of 1st distance:\n");
    printf("Enter feet: ");
    scanf("%f",&distance1.feet);
    printf("Enter inch: ");
    scanf("%f",&distance1.inch);
    printf("Enter information of 2nd distance:\n");
    printf("Enter feet: ");
    scanf("%f",&distance2.feet);
    printf("Enter inch: ");
    scanf("%f",&distance2.inch);
    total.feet=distance1.feet+distance2.feet;
    float dis =distance1.inch+distance2.inch;
    while (dis>12)
    {
    total.feet++;
    dis-=12;
    }
    total.inch=dis;
    printf("Sum of distanse= %0.0f'-%0.1f\"",total.feet,total.inch);
    return 0;
}