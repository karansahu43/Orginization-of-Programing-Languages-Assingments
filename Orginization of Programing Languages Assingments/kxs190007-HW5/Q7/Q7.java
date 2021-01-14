//Karan Sahu 
//kxs190007 
//cs4337.503
//Assignment 5

class Q7

{

public static int Add(int x, int y)
{
return x + y;
}
public static void main(String args[])
{
int a = 2, b = 3, c = 4;
int result1 = a * b + (a+b) * Add(c,a);
int result2 = a * b + (a+b) * c + a;
System.out.println(result1);
System.out.println(result2);
}
}