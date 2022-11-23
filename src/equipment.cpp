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

void equipment::load(string filepath)
{
	string tmp;
	string data[2];
	ifstream fin;
	fin.open(filepath);
	while (fin)
	{
		getline(fin, tmp);
		data[0] = tmp.substr(0, tmp.find('|'));
		if (data[0] == "Name")
			name = tmp.substr(tmp.find('|')+1, tmp.length());
		if (data[0] == "Count")
			count = stoi(tmp.substr(tmp.find('|')+1, tmp.length()));
		if (data[0] == "Price")
			price = stoi(tmp.substr(tmp.find('|')+1, tmp.length()));
		if (data[0] == "Weight")
			weight = stoi(tmp.substr(tmp.find('|')+1, tmp.length()));
	}
	fin.close();
}

void equipment::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);
	fout << "Name|" << name << endl;
	fout << "Price|" << price << endl;
	fout << "Weight|" << weight << endl;
	fout.close();
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
