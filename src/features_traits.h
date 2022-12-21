#ifndef __features_traits__
#define __features_traits__

#include <string>
using namespace std;

class features_traits
{
	private:
		string name;
		string source;
		string source_type;
		string description;
	public:
		features_traits();
		void set_name(string name);
		void set_source(string source);
		void set_source_type(string source_type);
		void set_description(string description);
		string get_name();
		string get_source();
		string get_source_type();
		string get_description();
};

#endif
