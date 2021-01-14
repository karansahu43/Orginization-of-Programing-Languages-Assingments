// Karan Sahu
// NetID: KXS190007
// Partner: 
// Ogheneyoma Akoni 
// NetID: OXA180001 
// CS4337.503 
#include "Queue.h"
#include<iostream>
using namespace std;

Queue::Queue()
{
charcount = -1;
}

bool Queue::is_empty()
{
if(charcount < 0)
    return false;
if(charcount>=0)
    return true
}

bool Queue::enqueue(char c)
{
if(charcount >= MAX_CHAR)
{
    cout<<"Queue already has 10 chars"<<endl;
    return false;
}
else
{
    max10name[++charcount] = c;
    return true;
}
}

char Queue::dequeue()
{
if(charcount < 0)
{
cout<<"Queue is empty"<<endl;
return '\0';
}
else
{
char deq = max10name[charcount--];
return deq;
}
}

