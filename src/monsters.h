#ifndef __monsters__
#define __monsters__

#include <fstream>
#include <string>
#include <vector>
using namespace std;

class size
{
	private:
		string type;
		unsigned int hit_die;
		double space;
	public:
		size();
		void set_type(string type);
		void set_hit_die(unsigned int hit_die);
		void set_space(double space);
		void set_space();
		string get_type();
		unsigned int get_hit_die();
		double get_space();
		size operator=(size tmp) const;
};

class speed
{
	private:
		string type;
		unsigned int rate;
	public:
		speed();
		void set_type(string type);
		void set_rate(unsigned int rate);
		string get_type();
		unsigned int get_rate();
		speed operator=(speed tmp) const;
};

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
		equipment operator=(equipment tmp) const;
};

class ability
{
	private:
		string type;
		unsigned int score;
		unsigned int modifier;
	public:
		ability();
		void set_type(string type);
		void set_score(unsigned int score);
		void set_modifier(unsigned int modifier);
		string get_type();
		unsigned int get_score();
		unsigned int get_modifier();
		unsigned int get_total();
		ability operator=(ability tmp) const;
};

class action
{
	private:
		string name;
		unsigned int dice;
		unsigned int die_hit;
		unsigned int die_type;
		unsigned int modifier_amount;
		char modifier_type;
	public:
		action();
		void set_name(string name);
		void set_dice_rolls(unsigned int dice);
		void set_die_hit(unsigned int die_hit);
		void set_die_type(unsigned int die_type);
		void set_modifier_amount(unsigned int modifier_amount);
		void set_modifier_type(char modifier_type);
		void load(string filename);
		void save(string filename);
		string get_name();
		unsigned int get_dice();
		unsigned int get_die_hit();
		unsigned int get_die_type();
		unsigned int get_modifier_amount();
		char get_modifier_type();
		unsigned int roll();
		action operator=(action tmp) const;
};

class monster
{
	private:
		string name;
		string alignment;
		string filepath;
		vector <string> languages;
		unsigned int armor_class;
		size monster_size;
		speed monster_speed;
		vector <equipment> monster_equipment;
		vector <ability> monster_ability;
		bool alive;
	public:
		monster();
		void set_name(string name);
		void set_alignment(string alignment);
		void set_filepath(string filepath);
		void set_languages(vector <string> languages);
		void set_armor_class(unsigned int armor_class);
		void set_monster_size(size monster_size);
		void set_monster_speed(speed monster_speed);
		void set_monster_equipment(vector <equipment> monster_equipment);
		void set_monster_ability(vector <ability> monster_ability);
		void set_alive(bool alive);
		void add_equipment(equipment monster_equipment);
		void load(string filepath);
		void save(string filepath);
		string get_name();
		string get_alignment();
		vector <string> get_languages();
		string get_filepath();
		unsigned int get_armor_class();
		size get_monster_size();
		speed get_monster_speed();
		vector <equipment> get_monster_equipment();
		vector <ability> get_monster_ability();
		bool is_alive();
};

#endif
