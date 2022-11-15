#ifndef __character__
#define __character__

#define DEATH_SAVE_COUNT 3

#include <fstream>
#include <string>
#include <vector>
using namespace std;

class attack
{
	public:
		string name;
		bool attack_dc;
		unsigned int atk;
		unsigned int dice_count;
		unsigned int dice_type;
		string damage_type;
	public:
		attack();
		void set_name(string name);
		void set_attack_dc(bool attack_dc);
		void set_attack(unsigned int attack);
		void set_dice_count(unsigned int dice_count);
		void set_dice_type(unsigned int dice_type);
		void set_damage_type(string damage_type);
		string get_name();
		bool get_attack_dc();
		unsigned int get_attack();
		unsigned int get_dice_count();
		unsigned int get_dice_type();
		string get_damage_type();
		unsigned int roll();
		attack operator=(attack tmp) const;
};

class attributes
{
	private:
		string name;
		bool proficiency;
		int value;
	public:
		attributes();
		void set_name(std::string name);
		void set_proficiency(bool proficiency);
		void set_value(int value);
		std::string get_name();
		bool get_proficiency();
		int get_value();
};

class deathsave
{
	private:
		bool success[DEATH_SAVE_COUNT];
		bool failures[DEATH_SAVE_COUNT];
	public:
		deathsave();
		void set_success(bool *success, unsigned int count);
		void set_failures(bool *failures, unsigned int count);
		void reset_success();
		void reset_failures();
		void add_success();
		void add_failure();
		bool can_save();
		bool get_success(unsigned int pos);
		bool get_failures(unsigned int pos);
};

class featurestraits
{
	private:
		string name;
		string source;
		string source_type;
		string about;
		string char_class;
	public:
		featurestraits();
		void set_name(string name);
		void set_source(string source);
		void set_source_type(string source_type);
		void set_about(string about);
		void set_char_class(string char_class);
		string get_name();
		string get_source();
		string get_source_type();
		string get_about();
		string get_char_class();
};

class items
{
	private:
		string name;
		unsigned int count;
		double weight;
	public:
		items();
		void set_name(string name);
		void set_count(unsigned int count);
		void set_weight(double weight);
		string get_name();
		unsigned int get_count();
		double get_weight();
		double get_total_weight();
		items operator=(items tmp) const;
};

class money
{
	private:
		unsigned int cp;
		unsigned int sp;
		unsigned int ep;
		unsigned int gp;
		unsigned int pp;
	public:
		money();
		void set_cp(unsigned int cp);
		void set_sp(unsigned int sp);
		void set_ep(unsigned int ep);
		void set_gp(unsigned int gp);
		void set_pp(unsigned int pp);
		void operator=(money b);
		money *operator+(money b);
		unsigned int get_cp();
		unsigned int get_sp();
		unsigned int get_ep();
		unsigned int get_gp();
		unsigned int get_pp();
};

class proficiency
{
	private:
		string type;
		string prof;
	public:
		proficiency();
		void set_type(string type);
		void set_prof(string prof);
		string get_type();
		string get_proficiency();
};

class savingthrows
{
	private:
		string name;
		bool proficiency;
		int value;
	public:
		savingthrows();
		void set_name(std::string name);
		void set_proficiency(bool proficiency);
		void set_value(int value);
		std::string get_name();
		bool get_proficiency();
		int get_value();
};

class skills
{
	private:
		string name;
		bool proficiency;
		int value;
	public:
		skills();
		void set_name(std::string name);
		void set_proficiency(bool proficiency);
		void set_value(int value);
		std::string get_name();
		bool get_proficiency();
		int get_value();
		skills operator=(skills tmp_skill) const;
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
		vector <attack> atk;
		attributes attr;
		deathsave saves;
		featurestraits feattraits;
		vector <items> item;
		money coin;
		proficiency prof;
		savingthrows throws;
		vector <skills> skill;
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
		void load(string dirpath);
		void save(string dirpath);
		void levelup(unsigned int levels, unsigned int xp);
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
		vector <attack> get_atk();
		attributes get_attr();
		deathsave get_saves();
		featurestraits get_feattraits();
		vector <items> get_item();
		money get_coin();
		proficiency get_prof();
		savingthrows get_throws();
		vector <skills> get_skill();
};

#endif
