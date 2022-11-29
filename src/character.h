#ifndef __character__
#define __character__

#include <filesystem>
#include <map>
#include <string>
#include <vector>
#include "attack.h"
#include "equipment.h"
#include "features_traits.h"
#include "money.h"
#include "skills.h"
using namespace std;
namespace fs = std::filesystem;

struct Mods
{
	string name;
	int modifier;
	unsigned int value;
};

class character
{
	private:
		string name;
		string char_class;
		string background;
		string race;
		string traits;
		string ideals;
		string bonds;
		string flaws;
		unsigned int level;
		unsigned int experience;
		unsigned int hit_points;
		unsigned int temp_hit_points;
		unsigned int armor_class;
		unsigned int initiative;
		unsigned int speed;
		unsigned int hit_die;
		unsigned int proficiency_bonus;
		bool inspiration;
		bool death_saves[2][3];
		vector <equipment> item_list;
		vector <string> languages;
		money coin;
		Mods modifiers[6];
	public:
		character();
		void set_name(string name);
		void set_char_class(string char_class);
		void set_background(string background);
		void set_race(string race);
		void set_traits(string traits);
		void set_ideals(string ideals);
		void set_bonds(string bonds);
		void set_flaws(string flaws);
		void set_level(unsigned int level);
		void set_experience(unsigned int experience);
		void set_hit_points(unsigned int hit_points);
		void set_temp_hit_points(unsigned int temp_hit_points);
		void set_armor_class(unsigned int armor_class);
		void set_initiative(unsigned int initiative);
		void set_speed(unsigned int speed);
		void set_hit_die(unsigned int hit_die);
		void set_proficiency_bonus(unsigned int proficiency_bonus);
		void set_inspiration(bool inspiration);
		void load_equipment(string directory);
		void load_languages(vector <string> *languages);
		void add_language(string language);
		void remove_language(string language);
		void load(string filepath);
		void save(string filepath);
		string get_name();
		string get_char_class();
		string get_background();
		string get_race();
		string get_traits();
		string get_ideals();
		string get_bonds();
		string get_flaws();
		unsigned int get_level();
		unsigned int get_experience();
		unsigned int get_hit_points();
		unsigned int get_temp_hit_points();
		unsigned int get_armor_class();
		unsigned int get_initiative();
		unsigned int get_speed();
		unsigned int get_hit_die();
		unsigned int get_proficiency_bonus();
		bool get_inspiration();
		vector <equipment> *get_equipment_list();
		vector <string> *get_languages();
		money get_money_count();
};

#endif
