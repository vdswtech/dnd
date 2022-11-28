#include "skills.h"

skills::skills()
{
	name = "";
	bonus = 0;
	proficency = false;
}

void skills::set_name(string name)
{
	this->name = name;
}

void skills::set_bonus(int bonus)
{
	this->bonus = bonus;
}

void skills::set_proficency(bool proficency)
{
	this->proficency = proficency;
}

void skills::load(string filename)
{
	string tmp;
	string data[2];
	ifstream fin;
	fin.open(filename);

	getline(fin, tmp);
	data[0] = tmp.substr(0, tmp.find('|'));
	data[1] = tmp.substr(tmp.find('|')+1, tmp.length());
	if (data[0] == "Name")
		name = data[1];
	if (data[0] == "Bonus")
		bonus = stoi(data[1]);
	if (data[0] == "Proficency")
	{
		if (data[1] == "0")
			proficency = true;
		else
			proficency = false;
	}
	fin.close();
}

void skills::save(string filename)
{
	ofstream fout;
	fout.open(filename);

	fout << "Name|" << name << endl;
	fout << "Bonus|" << bonus << endl;
	fout << "Proficency|" << proficency << endl;

	fout.close();
}

string skills::get_name()
{
	return name;
}

int skills::get_bonus()
{
	return bonus;
}

bool skills::get_proficency()
{
	return proficency;
}
