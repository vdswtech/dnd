#include <iostream>
using namespace std;

unsigned int roll(unsigned int dice = 1, unsigned int pip = 20)
{
	unsigned int sum = 0;
	srand(time(NULL));
	for (unsigned int i=0; i<dice; i++)
		sum += rand() % pip + 1;
	return sum;
}

int main(int argc, char **argv)
{
	cout << roll() << endl;
	return 0;
}
