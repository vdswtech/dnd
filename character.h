#ifndef __character__
#define __character__

#define DEATH_SAVE_COUNT 3

#include <string>

struct 
{
	bool success[DEATH_SAVE_COUNT] = false, false, false;
	bool failures[DEATH_SAVE_COUNT] = false, false, false;
} DEATH_SAVE;

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
		DEATH_SAVE death_save;
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
		void set_level(unsigned int level);
		void set_experience(unsigned int experience);
		void set_initative(unsigned int initiative);
		void set_speed(unsigned int speed);
		void set_proficiency_bonus(unsigned int proficiency_bonus);
		void set_hit_die(unsigned int hit_die);
		void set_all(string name,
			       	string race, 
				string char_class, 
				string background, 
				string alignment, 
				string traits, 
				string ideals, 
				string bonds, 
				string flaws, 
				unsigned int level, 
				unsigned int experience, 
				unsigned int initiative, 
				unsigned int speed, 
				unsigned int proficiency_bonus,
				unsigned int hit_die);
		void reset_death_save();
		string get_name();
		string get_race();
		string get_char_class();
		string get_background();
		string get_alignment();
		string get_traits();
		string get_ideals();
		string get_bonds();
		string get_flaws();
		unsigned int get_level();
		unsigned int get_Experience();
		unsigned int get_armor_class();
		unsigned int get_initiative();
		unsigned int get_speed();
		unsigned int get_proficiency_bonus();
		unsigned int get_hit_die();
};

#endif
