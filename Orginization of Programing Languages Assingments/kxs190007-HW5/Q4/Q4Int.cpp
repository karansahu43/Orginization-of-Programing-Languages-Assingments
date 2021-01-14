//Karan Sahu 
//kxs190007 
//cs4337.503
//Assignment 5
#include <iostream>
#include <string>
using namespace std;

void ListAbilities(int Abilitys[2])
{
	for (int i = 0; i < 2; i++)
	{
		switch (Abilitys[i])
		{
		case 1:
			cout << "You can Run!" << endl;
			break;
		case 2:
			cout << "You can Swim!" << endl;
			break;
		case 3:
			cout << "You can Fly!" << endl;
			break;
		case 4:
			cout << "You can Jump!" << endl;
			break;
		case 5:
			cout << "You can Glide!" << endl;
			break;
		case 6:
			cout << "You can do Nothing!" << endl;
			break;

		}
	}
}
int main() {
	int type;
	int Abilitys[2];
	int animals = 0;
	cout << "What animal would you like to be" << endl << "Dog:enter 1, Parrot:enter 2, Shark:enter 3, Lion:enter 4" << endl;
	cin >> animals;
	type = animals;
	switch (type) {
	case 1:
		cout << "You're a Dog!" << endl;
		Abilitys[0] = 1;
		Abilitys[1] = 4;
		break;
	case 2:
		cout << "You're a Parrot!" << endl;
		Abilitys[0] = 3;
		Abilitys[1] = 5;
		
		break;
	case 3:
		cout << "You're a Shark!" << endl;
		Abilitys[0] = 2;
		Abilitys[1] = 5;
		break;
	case 4:
		cout << "You're a Lion!" << endl;
		Abilitys[0] = 1;
		Abilitys[1] = 4;
		break;
	}
	ListAbilities(Abilitys);

}
