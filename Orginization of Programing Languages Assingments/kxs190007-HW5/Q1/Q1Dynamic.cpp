//Karan Sahu 
//kxs190007 
//cs4337.503
//Assignment 5
// For this example assume dynamic scope otherwise will result in a 2 output

#include <iostream>
using namespace std;
int x = 2;

int DynamicTest() {
    return x;
}

int check()
{
    int x = 1;
    return DynamicTest();
}
int main()
{
    cout << check() << endl;//Output 1
}


