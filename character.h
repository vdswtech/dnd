#ifndef __character__
#define __character__

#define DEATH_SAVE_COUNT 3

#include <string>
#include <vector>

struct
{
	bool success[DEATH_SAVE_COUNT];
	bool failures[DEATH_SAVE_COUNT];
} DEATH_SAVE;

struct
{
	bool proficency;
	int value;
	string name;
} SAVING_THROWS;

struct
{
	unsigned int value;
	bool proficency;
	string name;
} ATRIBUTES;

struct
{
	unsigned int CP;
	unsigned int SP;
	unsigned int ep;
	unsigned int gp;
	unsigned int pp;
} MONEY;

struct
{
	bool proficency;
	unsigned int bonus;
	string name;
} SKILLS;

struct
{
	string name;
	bool attack_dc;
	unsigned int attack;
	unsigned int dice_count;
	unsigned int dice_type;
	string damage_type;
} ATTACKS;

struct
{
	string type;
	string proficency;
} OTHER_PROFICIENCEY;

struct
{
	string item;
	unsigned int count;
	unsigned double weight;
} ITEMS;

struct
{
	string name;
	string source;
	string source_type;
	string about;
	string char_class;
} FEATURES_TRAITS;

class character
{
	private:
		string name;
		string race;
		string char_class;
		string background;
		string alignment;
		string traits;
		string ideals;
		string bonds;
		string flaws;
		unsigned int level;
		unsigned int experience;
		unsigned int armor_class;
		unsigned int initiative;
		unsigned int speed;
		unsigned int proficiency_bonus;
		unsigned int hit_die;
		bool inspiration;
		DEATH_SAVE death_save;
		SAVING_THROWS saving_throws;
		vector <ATRIBUTES> atributes;
		MONEY coin;
		vector <SKILLS> skills;
		vector <ATTACKS> attacks;
		vector <OTHER_PROFICIENCY> other_proficiencyi;
		vector <ITEMS> items;
		vector <FEATURES_TRAITS> features_and_traits;
	public:
		character();
		void set_name(string name);
		void set_race(string race);
		void set_character_class(string char_class);
		void set_background(string background);
		void set_alignment(string alignment);
		void set_traits(string traits);
		void set_ideals(string ideals);
		void set_bonds(string bonds);
		void set_flaws(string flaws);
		void set_inspiration(bool inspiration);
		void set_level(unsigned int level);
		void set_experience(unsigned int experience);
		void set_initative(unsigned int initiative);
		void set_speed(unsigned int speed);
		void set_proficiency_bonus(unsigned int proficiency_bonus);
		void set_hit_die(unsigned int hit_die);
		void set_death_save();
		void set_saving_throws();
		void set_atributes(vector <ATRIBUTES> atributes);
		void set_money(MONEY coin);
		void set_skills(vector <SKILLS> skills);
		void set_attacks(vector <ATTACKS> attacks);
		void set_other_proficiency(vector <OTHER_PROFICIENCY> other_proficiency);
		void set_items(vector <ITEMS items>);
		void set_features_and_traits(vector <FEATURES_TRAITS> features_and_traits);
		void set_all(string name,
			       	string race,
				string char_class,
				string background,
				string alignment,
				string traits,
				string ideals,
				string bonds,
				string flaws,
				bool inspiration,
				unsigned int level,
				unsigned int experience,
				unsigned int initiative,
				unsigned int speed,
				unsigned int proficiency_bonus,
				unsigned int hit_die,
				vector <ATRIBUTES> atributes,
				vector <MONEY> coin,
				vector <SKILLS> skills,
				vector <ATTACKS> attacks,
				vector <OTHER_PROFICIENCY> other proficiency,
				vector <ITEMS> items,
				vector <FEATIRES_TRAITS> features_and_traits);
		void reset_death_save();
		void load(string filepath);
		void save(string filepath);
		void add_coin();
		string get_name();
		string get_race();
		string get_char_class();
		string get_background();
		string get_alignment();
		string get_traits();
		string get_ideals();
		string get_bonds();
		string get_flaws();
		bool get_inspiration();
		unsigned int get_level();
		unsigned int get_Experience();
		unsigned int get_armor_class();
		unsigned int get_initiative();
		unsigned int get_speed();
		unsigned int get_proficiency_bonus();
		unsigned int get_hit_die();
		ATRIBUTES get_atributes();
		MONEY get_coin_count();
		SKILlS get_skills();
		ATTACKS get_attacks();
		OTHER_PROFICIENCY get_other_proficiency();
		ITEMS get_items();
		FEATURES_TRAITS get_features_and_traits();
};

#endif
