#ifndef __character__
#define __character__

#define DEATH_SAVE_COUNT 3
#define DEFAULT_ARR_SIZE 5

#include <string>
using namespace std;

struct DeathSave
{
	bool success[DEATH_SAVE_COUNT];
	bool failures[DEATH_SAVE_COUNT];
};

struct SavingThrows
{
	bool proficency;
	int value;
	string name;
};

struct Attributes
{
	unsigned int value;
	bool proficency;
	string name;
};

struct Money
{
	unsigned int CP;
	unsigned int SP;
	unsigned int EP;
	unsigned int GP;
	unsigned int PP;
};

struct Skills
{
	bool proficency;
	unsigned int bonus;
	string name;
};

struct Attacks
{
	string name;
	bool attack_dc;
	unsigned int attack;
	unsigned int dice_count;
	unsigned int dice_type;
	string damage_type;
};

struct OtherProficiency
{
	string type;
	string proficency;
};

struct Items
{
	string item;
	unsigned int count;
	double weight;
};

struct FeaturesTraits
{
	string name;
	string source;
	string source_type;
	string about;
	string char_class;
};

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
		DeathSave death_save;
		SavingThrows saving_throws;
		Attributes atributes[DEFAULT_ARR_SIZE];
		Money coin;
		Skills skills[DEFAULT_ARR_SIZE];
		Attacks attacks[DEFAULT_ARR_SIZE];
		OtherProficiency other_proficiency[DEFAULT_ARR_SIZE];
		Items items[DEFAULT_ARR_SIZE];
		FeaturesTraits features_and_traits[DEFAULT_ARR_SIZE];
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
		void set_atributes(Attributes atributes, unsigned int size);
		void set_money(Money coin);
		void set_skills(Skills skills, unsigned int size);
		void set_attacks(Attacks attacks, unsigned int size);
		void set_other_proficiency(OtherProficiency other_proficiency, unsigned int size);
		void set_items(Items items, unsigned int size);
		void set_features_and_traits(FeaturesTraits features_and_traits, unsigned int size);
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
				Attributes attributes,
				unsigned int attribute_size,
				Money coin,
				Skills skills,
				unsigned int skills_size,
				Attacks attacks,
				unsigned int attacks_size,
				OtherProficiency other_proficiency,
				unsigned int other_proficiency_size,
				Items items,
				unsigned int items_size,
				FeaturesTraits features_and_traits,
				unsigned int features_traits_size);
		void reset_death_save();
		void load(string filepath);
		void save(string filepath);
		void add_coin(Money coin);
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
		unsigned int get_experience();
		unsigned int get_armor_class();
		unsigned int get_initiative();
		unsigned int get_speed();
		unsigned int get_proficiency_bonus();
		unsigned int get_hit_die();
		Attributes get_atributes();
		Money get_coin_count();
		Skills get_skills();
		Attacks get_attacks();
		OtherProficiency get_other_proficiency();
		Items get_items();
		FeaturesTraits get_features_and_traits();
};

#endif
