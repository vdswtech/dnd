#include "equipment.h"

equipment::equipment()
{
	name = "";
	count=1;
	weight = 0.5;
}

void equipment::set_name(string name)
{
	this->name = name;
}

void equipment::set_count(unsigned int count)
{
	this->count = count;
}

void equipment::set_price(unsigned int price)
{
	this->price = price;
}

void equipment::set_weight(double weight)
{
	this->weight = weight;
}

string equipment::get_name()
{
	return name;
}

unsigned int equipment::get_count()
{
	return count;
}

unsigned int equipment::get_price()
{
	return price;
}

double equipment::get_weight()
{
	return weight;
}
