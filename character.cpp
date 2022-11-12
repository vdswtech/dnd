#include "character.h"

character::character()
{
	name = "";
	race = "";
	char_class = "";
	background = "";
	alignment = "";
	traits = "";
	ideals = "";
	bonds = "";
	flaws = "";
	level = 1;
	experience = 0;
	armor_class = 0;
	initiative = 0;
	speed = 0;
	proficiency_bonus = 0;
	hit_die = 0;
	inspiration = false;
}
void character::set_name(string name)
{
	this->name = name;
}

void character::set_race(string race)
{
	this->race = race;
}

void character::set_character_class(string char_class)
{
	this->char_class = char_class;
}

void character::set_background(string background)
{
	this->background = background;
}

void character::set_alignment(string alignment)
{
	this->alignment = alignment;
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

void character::set_inspiration(bool inspiration)
{
	this->inspiration = inspiration;
}

void character::set_level(unsigned int level)
{
	this->level = level;
}

void character::set_experience(unsigned int experience)
{
	this->experience = experience;
}

void character::set_initative(unsigned int initiative)
{
	this->initiative = initiative;
}

void character::set_speed(unsigned int speed)
{
	this->speed = speed;
}

void character::set_proficiency_bonus(unsigned int proficiency_bonus)
{
	this->proficiency_bonus = proficiency_bonus;
}

void character::set_hit_die(unsigned int hit_die)
{
	this->hit_die = hit_die;
}

void character::set_all(string name, string race, string char_class, string background, string alignment, string traits, string ideals, string bonds, string flaws, bool inspiration, unsigned int level, unsigned int experience, unsigned int initiative, unsigned int speed, unsigned int proficiency_bonus, unsigned int hit_die)
{
	this->name = name;
	this->race = race;
	this->char_class = char_class;
	this->background = background;
	this->alignment = alignment;
	this->traits = traits;
	this->ideals = ideals;
	this->bonds = bonds;
	this->flaws = flaws;
	this->inspiration = inspiration;
	this->level = level;
	this->experience = experience;
	this->initiative = initiative;
	this->speed = speed;
	this->proficiency_bonus = proficiency_bonus;
	this->hit_die = hit_die;
}

void character::reset_death_save()
{
}

void character::load(string filepath)
{
}

void character::save(string filepath)
{
}

void character::add_coin()
{
}

string character::get_name()
{
	return name;
}

string character::get_race()
{
	return race;
}

string character::get_char_class()
{
	return char_class;
}

string character::get_background()
{
	return background;
}

string character::get_alignment()
{
	return alignment;
}

string character::get_traits()
{
	return traits;
}

string character::get_ideals()
{
	return ideals;
}

string character:: get_bonds()
{
	return bonds;
}

string character::get_flaws()
{
	return flaws;
}

bool character::get_inspiration()
{
	return inspiration;
}

unsigned int character::get_level()
{
	return level;
}

unsigned int character::get_Experience()
{
	return experience;
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

unsigned int character::get_proficiency_bonus()
{
	return proficiency_bonus;
}

unsigned int character::get_hit_die()
{
	return hit_die;
}
