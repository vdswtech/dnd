#include "character.h"
using namespace std;

attack::attack()
{
	name = "";
	attack_dc = false;
	atk = 0;
	dice_count = 1;
	dice_type = 20;
	damage_type = "";
}

void attack::set_name(string name)
{
	this->name = name;
}

void attack::set_attack_dc(bool attack_dc)
{
	this->attack_dc = attack_dc;
}

void attack::set_attack(unsigned int atk)
{
	this->atk = atk;
}

void attack::set_dice_count(unsigned int dice_count)
{
	this->dice_count = dice_count;
}

void attack::set_dice_type(unsigned int dice_type)
{
	this->dice_type = dice_type;
}

void attack::set_damage_type(string damage_type)
{
	this->damage_type = damage_type;
}

string attack::get_name()
{
	return name;
}

bool attack::get_attack_dc()
{
	return attack_dc;
}

unsigned int attack::get_attack()
{
	return atk;
}

unsigned int attack::get_dice_count()
{
	return dice_count;
}

unsigned int attack::get_dice_type()
{
	return dice_type;
}

string attack::get_damage_type()
{
	return damage_type;
}

unsigned int attack::roll()
{
	unsigned int total = 0;

	return total;
}

attributes::attributes()
{
	name = "";
	proficiency = false;
	value = 0;
}

void attributes::set_name(std::string name)
{
	this->name = name;
}

void attributes::set_proficiency(bool proficiency)
{
	this->proficiency = proficiency;
}

void attributes::set_value(int value)
{
	this->value = value;
}

std::string attributes::get_name()
{
	return name;
}

bool attributes::get_proficiency()
{
	return proficiency;
}

int attributes::get_value()
{
	return value;
}

deathsave::deathsave()
{
	for (unsigned int i=0; i<DEATH_SAVE_COUNT; i++)
	{
		success[i] = false;
		failures[i] = false;
	}
}

void deathsave::reset_success()
{
	for (unsigned int i=0; i<DEATH_SAVE_COUNT; i++)
		success[i] = false;
}

void deathsave::reset_failures()
{
	for (unsigned int i=0; i<DEATH_SAVE_COUNT; i++)
		failures[i] = false;
}

void deathsave::add_success()
{
	if (success[DEATH_SAVE_COUNT-1] == true)
		throw std::runtime_error("Unable to throw another save");
	for (int i=0; i<DEATH_SAVE_COUNT; i++)
		if (success[i] == false)
			success[i] = true;
}

void deathsave::add_failure()
{
	if (failures[DEATH_SAVE_COUNT-1] == true)
		throw std::runtime_error("Unable to throw another save");
	for (int i=0; i<DEATH_SAVE_COUNT; i++)
		if (failures[i] == false)
			failures[i] = true;
}

bool deathsave::can_save()
{
	if (success[DEATH_SAVE_COUNT-1] == false && failures[DEATH_SAVE_COUNT-1] == false)
		return true;
	return false;
}

featurestraits::featurestraits()
{
	name = "";
	source = "";
	source_type = "";
	about = "";
	char_class = "";
}

void featurestraits::set_name(string name)
{
	this->name = name;
}

void featurestraits::set_source(string source)
{
	this->source = source;
}

void featurestraits::set_source_type(string source_type)
{
	this->source_type = source_type;
}

void featurestraits::set_about(string about)
{
	this->about = about;
}

void featurestraits::set_char_class(string char_class)
{
	this->char_class = char_class;
}

string featurestraits::get_name()
{
	return name;
}

string featurestraits::get_source()
{
	return source;
}

string featurestraits::get_source_type()
{
	return source_type;
}

string featurestraits::get_about()
{
	return about;
}

string featurestraits::get_char_Class()
{
	return char_class;
}

items::items()
{
	name = "";
	count = 1;
	weight = 1;
}

void items::set_name(string name)
{
	this->name = name;
}

void items::set_count(unsigned int count)
{
	this->count = count;
}

void items::set_weight(double weight)
{
	this->weight = weight;
}

string items::get_name()
{
	return name;
}

unsigned int items::get_count()
{
	return count;
}

double items::get_weight()
{
	return weight;
}

double items::get_total_weight()
{
	return count * weight;
}

money::money()
{
	cp = 0;
	sp = 0;
	ep = 0;
	gp = 0;
	pp = 0;
}

void money::set_cp(unsigned int cp)
{
	this->cp = cp;
}

void money::set_sp(unsigned int sp)
{
	this->sp = sp;
}

void money::set_ep(unsigned int ep)
{
	this->ep = ep;
}

void money::set_gp(unsigned int gp)
{
	this->gp = gp;
}

void money::set_pp(unsigned int pp)
{
	this->pp = pp;
}

void money::operator=(money b)
{
	this->cp = b.get_cp();
	this->sp = b.get_sp();
	this->ep = b.get_ep();
	this->gp = b.get_gp();
	this->pp = b.get_pp();
}

money *money::operator+(money b)
{
	this->cp = this->cp + b.get_cp();
	this->sp = this->sp + b.get_sp();
	this->ep = this->ep + b.get_ep();
	this->gp = this->gp + b.get_gp();
	this->pp = this->pp + b.get_pp();

	return this;
}

unsigned int money::get_cp()
{
	return cp;
}

unsigned int money::get_sp()
{
	return sp;
}

unsigned int money::get_ep()
{
	return ep;
}

unsigned int money::get_gp()
{
	return gp;
}

unsigned int money::get_pp()
{
	return pp;
}

proficiency::proficiency()
{
	type = "";
	prof= "";
}

void proficiency::set_type(string type)
{
	this->type = type;
}

void proficiency::set_prof(string prof)
{
	this->prof= prof;
}

string proficiency::get_type()
{
	return type;
}

string proficiency::get_proficiency()
{
	return prof;
}

savingthrows::savingthrows()
{
	name = "";
	proficiency = false;
	value = 0;
}

void savingthrows::set_name(std::string name)
{
	this->name = name;
}

void savingthrows::set_proficiency(bool proficiency)
{
	this->proficiency = proficiency;
}

void savingthrows::set_value(int value)
{
	this->value = value;
}

std::string savingthrows::get_name()
{
	return name;
}

bool savingthrows::get_proficiency()
{
	return proficiency;
}

int savingthrows::get_value()
{
	return value;
}

skills::skills()
{
	name = "";
	proficiency = false;
	value = 0;
}

void skills::set_name(std::string name)
{
	this->name = name;
}

void skills::set_proficiency(bool proficiency)
{
	this->proficiency = proficiency;
}

void skills::set_value(int value)
{
	this->value = value;
}

std::string skills::get_name()
{
	return name;
}

bool skills::get_proficiency()
{
	return proficiency;
}

int skills::get_value()
{
	return value;
}
