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
