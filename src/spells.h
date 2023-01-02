#ifndef __spells__
#define __spells__

#include <string>
using namespace std;

class spells
{
	private:
		string name;
		string char_class;
		string cast_time;
		string range;
		string duration;
		unsigned int level;
	public:
		spells();
		void set_name(string name);
		void set_char_class(string char_class);
		void set_cast_time(string cast_time);
		void set_range(string range);
		void set_duration(string duration);
		void set_level(unsigned int level);
		void load(string record);
		string get_name();
		string get_char_class();
		string get_cast_time();
		string get_range();
		string get_duration();
		unsigned int get_level();
};

#endif
