#include "attack.h"

attack()
{
	name = "";
	atk = "";
	damage_type = "";
	die_count = 1;
	die_type = 20;
	modifier = 0;
	modifier_type = '+';
}

void attack::set_name(string name)
{
	this->name = name;
}

void attack::set_atk(string atk)
{
	this->atk = atk;
}

void attack::set_damage_type(string damage_type)
{
	this->damage_type = damage_type;
}

void attack::set_die_count(unsigned int die_count)
{
	this->die_count = die_count;
}

void attack::set_die_type(unsigned int die_type)
{
	this->die_type = die_type;
}

void attack::set_modifier(unsigned int modifier)
{
	this->modifier = modifier;
}

void attack::set_modifier_type(char modifier_type)
{
	this->modifier_type = modifier_type;
}

void attack::load(string filepath)
{
}

void attack::save(string filepath)
{
}

string attack::get_name()
{
	return name;
}

string attack::get_atk()
{
	return atk;
}

string attack::get_damage_type()
{
	return damage_type;
}

unsigned int attack::get_die_count()
{
	return die_count;
}

unsigned int attack::get_die_type()
{
	return die_type();
}

unsigned int attack::get_modifier()
{
	return modifier;
}

char attack::get_modifier_type()
{
	return modifier_type;
}

unsigned int attack::roll()
{
	unsigned int total = 0;
	srand(time(NULL));
	for (unsigned int i=0; i<die_count; i++)
	{
		switch (modifier_type)
		{
			case '+':
				total = total + (rand() % die_type) + modifier;
				break;
			case '-':
				total = total + (rand() % die_type) - modifier;
				break;
			case '*':
				total = total + (rand() % die_type) * modifier;
				break;
			case '/':
				total = total + (rand() % die_type) / modifier;
				break;
		}
	}
}
