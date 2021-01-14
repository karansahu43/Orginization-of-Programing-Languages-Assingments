//Karan Sahu 
//kxs190007 
//cs4337.503
//Assignment 5
#include <stdio.h>
void main()
{
    
    //Narrowing
    double x = 12334.56789;

    long y = (long)x;

    printf("long = %ld\n", y);

    
    //Widening
    short a = 321;
    int b = a;

    printf("int = %hd\n", b);

}