#include "character.h"

character::character()
{
	name = "";
	char_class = "";
	background = "";
	race = "";
	traits = "";
	ideals = "";
	bonds = "";
	flaws = "";
	level = 1;
	experience = 0;
	hit_points = 0;
	temp_hit_points = 0;
	armor_class = 0;
	initiative = 0;
	speed = 0;
	hit_die = 0;
	proficiency_bonus = 0;
	inspiration = false;
	for (unsigned int i=0; i<2; i++)
		for (unsigned int j=0; j<3; j++)
			death_saves[i][j] = false;
	coin.set_all(0, 0, 0, 0, 0);
	modifiers[0].name = "Strength";
	modifiers[1].name = "Dexterity";
	modifiers[2].name = "Consitution";
	modifiers[3].name = "Intellegence";
	modifiers[4].name = "Wisdom";
	modifiers[5].name = "Charisma";
	for (unsigned int i=0; i<6; i++)
	{
		modifiers[i].modifier = 0;
		modifiers[i].value = 0;
	}
}

void character::set_name(string name)
{
	this->name = name;
}

void character::set_char_class(string char_class)
{
	this->char_class = char_class;
}

void character::set_background(string background)
{
	this->background = background;
}

void character::set_race(string race)
{
	this->race = race;
}

void character::set_traits(string traits)
{
	this->traits = traits;
}

void character::set_ideals(string ideals)
{
	this->ideals = ideals;
}

void character::set_bonds(string bonds)
{
	this->bonds = bonds;
}

void character::set_flaws(string flaws)
{
	this->flaws = flaws;
}

void character::set_level(unsigned int level)
{
	this->level = level;
}

void character::set_experience(unsigned int experience)
{
	this->experience = experience;
}

void character::set_hit_points(unsigned int hit_points)
{
	this->hit_points = hit_points;
}

void character::set_temp_hit_points(unsigned int temp_hit_points)
{
	this->temp_hit_points = temp_hit_points;
}

void character::set_armor_class(unsigned int armor_class)
{
	this->armor_class = armor_class;
}

void character::set_initiative(unsigned int initiative)
{
	this->initiative = initiative;
}

void character::set_speed(unsigned int speed)
{
	this->speed = speed;
}

void character::set_hit_die(unsigned int hit_die)
{
	this->hit_die = hit_die;
}

void character::set_proficiency_bonus(unsigned int proficiency_bonus)
{
	this->proficiency_bonus = proficiency_bonus;
}

void character::set_inspiration(bool inspiration)
{
	this->inspiration = inspiration;
}

void character::add_language(string language)
{
	languages.push_back(language);
}

void character::remove_language(string language)
{
	vector <string> tmp;
	for (unsigned int i=0; i<languages.size(); i++)
		if (languages[i] != language)
			tmp.push_back(languages[i]);
	languages = tmp;
}

void character::load(string data)
{
	cout << data << endl;
}

void character::save()
{
}

string character::get_name()
{
	return name;
}

string character::get_char_class()
{
	return char_class;
}

string character::get_background()
{
	return background;
}

string character::get_race()
{
	return race;
}

string character::get_traits()
{
	return traits;
}

string character::get_ideals()
{
	return ideals;
}

string character::get_bonds()
{
	return bonds;
}

string character::get_flaws()
{
	return flaws;
}

unsigned int character::get_level()
{
	return level;
}

unsigned int character::get_experience()
{
	return experience;
}

unsigned int character::get_hit_points()
{
	return hit_points;
}

unsigned int character::get_temp_hit_points()
{
	return temp_hit_points;
}

unsigned int character::get_armor_class()
{
	return armor_class;
}

unsigned int character::get_initiative()
{
	return initiative;
}

unsigned int character::get_speed()
{
	return speed;
}

unsigned int character::get_hit_die()
{
	return hit_die;
}

unsigned int character::get_proficiency_bonus()
{
	return proficiency_bonus;
}

bool character::get_inspiration()
{
	return inspiration;
}

vector <equipment> *character::get_equipment_list()
{
	return &item_list;
}

vector <string> *character::get_languages()
{
	return &languages;
}

money character::get_money_count()
{
	return coin;
}
