#ifndef __attack__
#define __attack__

#include <string>
#include <time.h>
using namespace std;

class attack
{
	private:
		string name;
		string atk;
		string damage_type;
		unsigned int die_count;
		unsigned int die_type;
		unsigned int modifier;
		char modifier_type;
	public:
		attack();
		void set_name(string name);
		void set_atk(string atk);
		void set_damage_type(string damage_type);
		void set_die_count(unsigned int die_count);
		void set_die_type(unsigned int die_type);
		void set_modifier(unsigned int modifier);
		void set_modifier_type(char modifier_type);
		void load(string filepath);
		void save(string filepath);
		string get_name();
		string get_atk();
		string get_damage_type();
		unsigned int get_die_count();
		unsigned int get_die_type();
		unsigned int get_modifier();
		char get_modifier_type();
		unsigned int roll();
};

#endif
