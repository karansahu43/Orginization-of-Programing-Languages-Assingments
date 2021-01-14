//Karan Sahu 
//kxs190007 
//cs4337.503
//Assignment 6
// Question 3

//1) Queue.h



#include <iostream>
using namespace std;
# define MAX_SIZE 10

class Queue

{

public:

int top;

char names[MAX_SIZE];

Queue();

void enqueue(char c);

char dequeue();

bool is_empty();

};

2) Queue.cpp

#include "Queue.h"

using namespace std;

Queue::Queue()

{

top = -1;

}

void Queue::enqueue(char c)

{

if(top >= MAX_SIZE)

{

cout<<"Queue is full"<<endl;

}

else

{

names[++top] = c

}

}

char Queue::dequeue()

{

if(top < 0)

{

cout<<"Queue is empty"<<endl;

return '\0';

}

else

{

char element = names[top--];

return element;

}

}

bool Queue::is_empty()

{

return (top < 0);

}

}