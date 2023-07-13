#include <stdio.h>
#include <string.h>
struct Sinfo
{
    char name[50];
    int id;
};
int main ()
{
    struct Sinfo arr[20]={{"Alex",12301},{"MO",14432}};
    struct Sinfo (*ptr)[20]=&arr;
    printf("%s\n",(*ptr)->name);
    printf("%d\n",(*ptr)->id);
    printf("%s\n",((*ptr)+1)->name);
    printf("%d\n",((*ptr)+1)->id);  
    return 0;
}  