#ifndef __equipment__
#define __equipment__

#include <fstream>
#include <iostream>
#include <string>
using namespace std;

class equipment
{
	private:
		string name;
		unsigned int count;
		unsigned int price;
		double weight;
	public:
		equipment();
		void set_name(string name);
		void set_count(unsigned int count);
		void set_price(unsigned int price);
		void set_weight(double weight);
		void load(string filepath);
		void save(string filepath);
		string get_name();
		unsigned int get_count();
		unsigned int get_price();
		double get_weight();
};

#endif
