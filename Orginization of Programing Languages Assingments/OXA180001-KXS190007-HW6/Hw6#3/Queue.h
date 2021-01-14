// Karan Sahu
// NetID: KXS190007
// Partner: 
// Ogheneyoma Akoni 
// NetID: OXA180001 
// CS4337.503 

#include<iostream>

# define MAX_CHAR 10

class Queue

{

public:

int charcount;

char max10name[MAX_CHAR];

Queue();

bool enqueue(char c);

char dequeue();

bool is_empty();

};