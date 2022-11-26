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
	coin.set_all(0, 0, 0, 0, 0);
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

void character::load_equipment(string directory)
{
	equipment tmp;
	for (const auto & entry : fs::directory_iterator(directory))
	{
		tmp.load(entry.path());
		item_list.push_back(tmp);
	}
}

void character::load(string filepath)
{
	ifstream fin;
	fin.open(filepath);

	string tmp = "";
	getline(fin, tmp);
	string data[2];
	data[0] = tmp.substr(0, tmp.find('|'));
	data[1] = tmp.substr(tmp.find('|')+1, tmp.length());

	if (data[0] == "Name")
		name = data[1];
	if (data[0] == "Character class")
		char_class = data[1];
	if (data[0] == "Background")
		background = data[1];
	if (data[0] == "Race")
		race = data[1];
	if (data[0] == "Traits")
		traits = data[1];
	if (data[0] == "Ideals")
		ideals = data[1];
	if (data[0] == "Bonds")
		bonds = data[1];
	if (data[0] == "Flaws")
		flaws = data[1];
	if (data[0] == "Level")
		level = stoi(data[1]);
	if (data[0] == "Experience")
		experience = stoi(data[1]);
	if (data[0] == "Hit points")
		hit_points = stoi(data[1]);
	if (data[0] == "Temp hit points")
		temp_hit_points = stoi(data[1]);
	if (data[0] == "Armor class")
		armor_class = stoi(data[1]);
	if (data[0] == "initiative")
		initiative = stoi(data[1]);
	if (data[0] == "speed")
		speed = stoi(data[1]);
	if (data[0] == "Hit Die")
		hit_die = stoi(data[1]);
	
	fin.close();
}

void character::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);

	fout << "Name|" << name << endl;
	fout << "Character class|" << char_class << endl;
	fout << "Background|" << background << endl;
	fout << "Race|" << race << endl;
	fout << "Traits|" << traits << endl;
	fout << "Ideals|" << ideals << endl;
	fout << "Bonds|" << bonds << endl;
	fout << "Flaws|" << flaws << endl;
	fout << "Level|" << level << endl;
	fout << "Experience|" << experience << endl;
	fout << "Hit points|" << hit_points << endl;
	fout << "Temp hit points|" << temp_hit_points << endl;
	fout << "Armor class|" << armor_class << endl;
	fout << "Initiative|" << initiative << endl;
	fout << "Speed|" << speed << endl;
	fout << "Hit die|" << hit_die << endl;

	fout.close();
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

vector <equipment> character::get_equipment_list()
{
	return item_list;
}

money character::get_money_count()
{
	return coin;
}
