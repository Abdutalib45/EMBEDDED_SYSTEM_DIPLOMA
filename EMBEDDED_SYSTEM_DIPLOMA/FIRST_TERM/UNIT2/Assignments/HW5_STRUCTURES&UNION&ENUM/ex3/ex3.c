#include <stdio.h>

struct Scomplex
{
    float real;
    float complex;
};
void add_complex (struct Scomplex*,struct Scomplex*,struct Scomplex*);
int main ()
{
    struct Scomplex complex1,complex2,Tcomplex;
    printf("For 1st comblex:\n");
    printf("Enter real and imaginary respectively: ");
    scanf("%f%f",&complex1.real,&complex1.complex);
    printf("For 2nd comblex:\n");
    printf("Enter real and imaginary respectively: ");
    scanf("%f%f",&complex2.real,&complex2.complex);
    add_complex(&complex1,&complex2,&Tcomplex);
    printf("Sum=%0.2f+%.2fi",Tcomplex.real,Tcomplex.complex);
}
void add_complex (struct Scomplex*x,struct Scomplex*y,struct Scomplex*z)
{
    z->real=x->real+y->real;
    z->complex=x->complex+y->complex;
}