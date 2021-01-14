//Karan Sahu 
//kxs190007 
//cs4337.503
//Assignment 5
#include <iostream>
#include <string>
using namespace std;
enum Animal { Dog = 1, Parrot = 2, Shark = 3, Lion = 4 };
enum Ability { Fly, Swim, Jump, Run, Glide, None };

int main() {

	Animal type;
	Ability Abilitys[2] = { None, None };
	int animals = 0;
	cout << "What animal would you like to be" << endl << "Dog:enter 1, Parrot:enter 2, Shark:enter 3, Lion:enter 4" << endl;
	cin >> animals;
	type = (Animal)animals;
	switch (type) {
	case Dog:
		cout << "You're a Dog!" << endl;
		Abilitys[0] = Jump;
		Abilitys[1] = Run;
		break;
	case Parrot:
		cout << "You're a Parrot!" << endl;
		Abilitys[0] = Fly;
		Abilitys[1] = Glide;
		
		break;
	case Shark:
		cout << "You're a Shark!" << endl;
		Abilitys[0] = Swim;
		Abilitys[1] = Glide;
		break;
	case Lion:
		cout << "You're a Lion!" << endl;
		Abilitys[0] = Run;
		Abilitys[1] = Jump;
		break;
	}
	for (int i = 0; i < 2; i++)
	{
		switch (Abilitys[i])
		{
		case Run:
			cout << "You can Run!" << endl;
			break;
		case Swim:
			cout << "You can Swim!" << endl;
			break;
		case Fly:
			cout << "You can Fly!" << endl;
			break;
		case Jump:
			cout << "You can Jump!" << endl;
			break;
		case Glide:
			cout << "You can Glide!" << endl;
			break;
		case None:
			cout << "You can do Nothing!" << endl;
			break;

		}

	}

}
