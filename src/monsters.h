#ifndef __monsters__
#define __monsters__

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
		double weight;
	public:
		equipment();
		void set_name(string name);
		void set_count(unsigned int count);
		void set_weight(double weight);
		string get_name();
		unsigned int get_count();
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
		vector <string> languages;
		unsigned int armor_class;
		size monster_size;
		speed monster_speed;
		equipment monster_equipment;
		ability monster_ability;
	public:
};

#endif
