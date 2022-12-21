#ifndef __skills__
#define __skills__

#include <fstream>
#include <iostream>
#include <string>
using namespace std;

class skills
{
	private:
		string name;
		int bonus;
		bool proficency;
	public:
		skills();
		void set_name(string name);
		void set_bonus(int bonus);
		void set_proficency(bool proficency);
		string get_name();
		int get_bonus();
		bool get_proficency();
};

#endif
