#include "character.h"
using namespace std;

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

	coin.CP = 0;
	coin.SP = 0;
	coin.EP = 0;
	coin.GP = 0;
	coin.PP = 0;

	for (unsigned int i=0; i<DEATH_SAVE_COUNT; i++)
	{
		death_save.success[i] = false;
		death_save.failures[i] = false;
	}

	SavingThrows *saving_throws = new SavingThrows[DEFAULT_ARR_SIZE];
	Attributes *attributes = new Attributes[DEFAULT_ARR_SIZE];
	Skills *skills = new Skills[DEFAULT_ARR_SIZE];
	Attacks *attacks = new Attacks[DEFAULT_ARR_SIZE];
	OtherProficiency *other_proficiency = new OtherProficiency[DEFAULT_ARR_SIZE];
	Items *items = new Items[DEFAULT_ARR_SIZE];
	FeaturesTraits *features_and_traits = new FeaturesTraits[DEFAULT_ARR_SIZE];

	for (unsigned int i=0; i<DEFAULT_ARR_SIZE; i++)
	{
		saving_throws[i].proficency = false;
		saving_throws[i].value = 0;
		saving_throws[i].name = "";
		attributes[i].proficency = false;
		attributes[i].value = 0;
		attributes[i].name = "";
		skills[i].proficency = false;
		skills[i].bonus = 0;
		skills[i].name = "";
		attacks[i].name = "";
		attacks[i].attack_dc = false;
		attacks[i].attack = 0;
		attacks[i].dice_count = 1;
		attacks[i].dice_type=6;
		attacks[i].damage_type = "";
		other_proficiency[i].type = "";
		other_proficiency[i].proficiency = "";
		items[i].item = "";
		items[i].count = 0;
		items[i].weight = 0.0;
		features_and_traits[i].name = "";
		features_and_traits[i].source = "";
		features_and_traits[i].source_type = "";
		features_and_traits[i].about = "";
		features_and_traits[i].char_class = "";
	}
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

void character::set_death_save()
{
}

void character::set_saving_throws()
{
}

void character::set_attributes(Attributes *attributes, unsigned int size)
{
	this->attributes = new Attributes [size];
	for (unsigned int i=0; i<size; i++)
		this->skills[i] = skills[i];
}

void character::set_money(Money coin)
{
	this->coin.CP = coin.CP;
	this->coin.SP = coin.SP;
	this->coin.EP = coin.EP;
	this->coin.GP = coin.GP;
	this->coin.PP = coin.PP;
}

void character::set_skills(Skills *skills, unsigned int size)
{
	for (unsigned int i=0; i<size; i++)
		this->skills[i] = skills[i];
}

void character::set_attacks(Attacks *attacks, unsigned int size)
{
	this->attacks = new Attacks[size];
	for (unsigned int i=0; i<size; i++)
		this->attacks[i] = attacks[i];
}

void character::set_other_proficiency(OtherProficiency *other_proficiency, unsigned int size)
{
	this->other_proficiency = new OtherProficiency[size];
	for (unsigned int i=0; i<size; i++)
		this->other_proficiency[i] = other_proficiency[i];
}

void character::set_items(Items *items, unsigned int size)
{
	this->items = new Items[size];
	for (unsigned int i=0; i<size; i++)
		this->items[i] = items[i];
}

void character::set_features_and_traits(FeaturesTraits *features_and_traits, unsigned int size)
{
	this->features_and_traits= new FeaturesTraits[size];
	for (unsigned int i=0; i<size; i++)
		this->features_and_traits[i] = features_and_traits[i];
}

void character::set_all(string name,
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
		Attributes *attributes,
		unsigned int attribute_size,
		Money coin,
		Skills *skills,
		unsigned int skills_size,
		Attacks *attacks,
		unsigned int attacks_size,
		OtherProficiency *other_proficiency,
		unsigned int other_proficiency_size,
		Items *items,
		unsigned int items_size,
		FeaturesTraits *features_and_traits,
		unsigned int features_traits_size)
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
	
	this->attributes = new Attributes[attribute_size];
	this->attacks = new Attacks[attacks_size];
	this->other_proficiency = new OtherProficiency[other_proficiency_size];
	this->items = new Items [items_size];
	this->features_and_traits = new FeaturesTraits[features_traits_size];

	delete attributes;
	delete attacks;
	delete other_proficiency;
	delete items;
	delete features_and_traits;

	for (unsigned int i=0; i<attribute_size; i++)
		this->attributes[i] = attributes[i];
	for (unsigned int i=0; i<attacks_size; i++)
		this->attacks[i] = attacks[i];
	for (unsigned int i=0; i<other_proficiency_size; i++)
		this->other_proficiency[i] = other_proficiency[i];
	for (unsigned int i=0; i<items_size; i++)
		this->items[i] = items[i];
	for (unsigned int i=0; i<features_traits_size; i++)
		this->features_and_traits[i] = features_and_traits[i];
}

void character::reset_death_save()
{
	for (unsigned int i=0; i<DEATH_SAVE_COUNT; i++)
	{
		this->death_save.success[i] = false;
		this->death_save.failures[i] = false;
	}
}

void character::load(string filepath)
{
}

void character::save(string filepath)
{
}

void character::add_coin(Money coin)
{
	this->coin.CP += coin.CP;
	this->coin.SP += coin.SP;
	this->coin.EP += coin.EP;
	this->coin.GP += coin.GP;
	this->coin.PP += coin.PP;
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

string character::get_bonds()
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

unsigned int character::get_experience()
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

SavingThrows *character::get_savingThrows()
{
	return saving_throws;
}

Attributes *character::get_attributes()
{
	return attributes;
}

Money character::get_coin_count()
{
	return coin;
}

Skills *character::get_skills()
{
	return skills;
}

Attacks *character::get_attacks()
{
	return attacks;
}

OtherProficiency *character::get_other_proficiency()
{
	return other_proficiency;
}

Items *character::get_items()
{
	return items;
}

FeaturesTraits *character::get_features_and_traits()
{
	return features_and_traits;
}
