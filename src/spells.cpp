#include "spells.h"

spells::spells()
{
	name = "";
	char_class = "";
	cast_time = "";
	range = "";
	duration = "";
	level = 0;
}

void spells::set_name(string name)
{
	this->name = name;
}

void spells::set_char_class(string char_class)
{
	this->char_class = char_class;
}

void spells::set_cast_time(string cast_time)
{
	this->cast_time = cast_time;
}

void spells::set_range(string range)
{
	this->range = range;
}

void spells::set_duration(string duration)
{
	this->duration = duration;
}

void spells::set_level(unsigned int level)
{
	this->level = level;
}

void spells::load(string record)
{
}

string spells::get_name()
{
	return name;
}

string spells::get_char_class()
{
	return char_class;
}

string spells::get_cast_time()
{
	return cast_time;
}

string spells::get_range()
{
	return range;
}

string spells::get_duration()
{
	return duration;
}

unsigned int spells::get_level()
{
	return level;
}
