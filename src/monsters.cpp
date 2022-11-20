#include "monsters.h"

size::size()
{
	type = "small";
	hit_die = 20;
	space = 2.5;
}

void size::set_type(string type)
{
	this->type = type;
}

void size::set_hit_die(unsigned int hit_die)
{
	this->hit_die = hit_die;
}

void size::set_space(double space)
{
	this->space = space;
}

void size::set_space()
{
	if (type == "small")
		space = 2.5;
	else if (type == "medium")
		space = 5;
	else if (type == "large")
		space = 10;
	else if (type == "huge")
		space = 15;
	else if (type == "gargantuan")
		space = 20;
	else
		throw("Monster does not have a valid size: " + type);
}

string size::get_type()
{
	return type;
}

unsigned int size::get_hit_die()
{
	return hit_die;
}

double size::get_space()
{
	return space;
}

size size::operator=(size tmp) const
{
	size tmp_size;
	tmp_size.type = tmp.get_type();
	tmp_size.hit_die = tmp.get_hit_die();
	tmp_size.space = tmp.get_space();

	return tmp_size;
}

speed::speed()
{
	type = "";
	rate = 0;
}

void speed::set_type(string type)
{
	this->type = type;
}

void speed::set_rate(unsigned int rate)
{
	this->rate = rate;
}

string speed::get_type()
{
	return type;
}

unsigned int speed::get_rate()
{
	return rate;
}

speed speed::operator=(speed tmp) const
{
	speed tmp_speed;
	tmp_speed.type = tmp.get_type();
	tmp_speed.rate = tmp.get_rate();

	return tmp_speed;
}

equipment::equipment()
{
	name = "";
	count=1;
	weight = 0.5;
}

void equipment::set_name(string name)
{
	this->name = name;
}

void equipment::set_count(unsigned int count)
{
	this->count = count;
}

void equipment::set_weight(double weight)
{
	this->weight = weight;
}

void equipment::load(string filepath)
{
	string tmp;
	string data[2];
	ifstream fin;
	fin.open(filepath);
	while (fin)
	{
		fin >> tmp;
		data[0] = tmp.substr(0, tmp.find('|'));
		data[1] = tmp.substr(tmp.find('|') + 1, tmp.length());
		if (data[0] == "Name")
			name = data[1];
		if (data[0] == "Count")
			count = stoi(data[1]);
		if (data[0] == "Attack")
			weight = stod(data[1]);
	}
	fin.close();
}

void equipment::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);
	fout << "Name|" << name << endl;
	fout << "Count|" << count << endl;
	fout << "Weight|" << weight << endl;
	fout.close();
}

string equipment::get_name()
{
	return name;
}

unsigned int equipment::get_count()
{
	return count;
}

double equipment::get_weight()
{
	return weight;
}

equipment equipment::operator=(equipment tmp) const
{
	equipment tmp_equipment;
	tmp_equipment.name = tmp.get_name();
	tmp_equipment.count = tmp.get_count();
	tmp_equipment.weight = tmp.get_weight();

	return tmp_equipment;
}

ability::ability()
{
	type = "";
	score = 0;
	modifier = 0;
}

void ability::set_type(string type)
{
	this->type = type;
}

void ability::set_score(unsigned int score)
{
	this->score = score;
}

void ability::set_modifier(unsigned int modifier)
{
	this->modifier = modifier;
}

string ability::get_type()
{
	return type;
}

unsigned int ability::get_score()
{
	return score;
}

unsigned int ability::get_modifier()
{
	return modifier;
}

unsigned int ability::get_total()
{
	return score + modifier;
}

ability ability::operator=(ability tmp) const
{
	ability tmp_ability;
	tmp_ability.type = tmp.get_type();
	tmp_ability.score = tmp.get_score();
	tmp_ability.modifier = tmp.get_modifier();
	return tmp_ability;
}

action::action()
{
	name = "";
	dice = 1;
	die_hit = 1;
	die_type = 20;
	modifier_amount = 0;
	modifier_type = '+';
}

void action::set_name(string name)
{
	this->name = name;
}

void action::set_dice_rolls(unsigned int dice)
{
	this->dice = dice;
}

void action::set_die_hit(unsigned int die_hit)
{
	this->die_hit = die_hit;
}

void action::set_die_type(unsigned int die_type)
{
	this->die_type = die_type;
}

void action::set_modifier_amount(unsigned int modifier_amount)
{
	this->modifier_amount = modifier_amount;
}

void action::set_modifier_type(char modifier_type)
{
	this->modifier_type = modifier_type;
}

void action::load(string filename)
{
	string tmp;
	string data[2];
	ifstream fin;
	fin.open(filename);
	while (fin)
	{
		fin >> tmp;
		data[0] = tmp.substr(0, tmp.find('|'));
		data[1] = tmp.substr(tmp.find('|') + 1, tmp.length());
		if (data[0] == "Name")
			name = data[1];
		if (data[0] == "Dice")
			dice = stoi(data[1]);
		if (data[0] == "Dice count")
			die_hit = stoi(data[1]);
		if (data[0] == "Dice type")
			die_type = stoi(data[1]);
		if (data[0] == "Modifier")
			modifier_amount = stoi(data[1]);
		if (data[0] == "Modifier type")
			modifier_type = data[1][0];
	}
	fin.close();
}

void action::save(string filename)
{
	ofstream fout;
	fout.open(filename);
	fout << "Name|" << name << endl;
	fout << "Dice|" << dice << endl;
	fout << "Dice count|" << die_hit << endl;
	fout << "Dice type|" << die_type << endl;
	fout << "Modifier|" << modifier_amount << endl;
	fout << "Modifier type|" << modifier_type << endl;
	fout.close();
}

string action::get_name()
{
	return name;
}

unsigned int action::get_dice()
{
	return dice;
}

unsigned int action::get_die_hit()
{
	return die_hit;
}

unsigned int action::get_die_type()
{
	return die_type;
}

unsigned int action::get_modifier_amount()
{
	return modifier_amount;
}

char action::get_modifier_type()
{
	return modifier_type;
}

unsigned int action::roll()
{
	unsigned int sum = 0;
	unsigned int tmp;

	srand(time(NULL));

	for (unsigned int i=0; i<dice; i++)
	{
		tmp = 0;
		for (unsigned int i=0; i<die_hit; i++)
			tmp = tmp + rand() % die_type;
		switch (modifier_type)
		{
			case '+':
				tmp = tmp + modifier_amount;
				break;
			case '-':
				tmp = tmp - modifier_amount;
				break;
			case '*':
				tmp = tmp * modifier_amount;
				break;
			case '/':
				tmp = tmp / modifier_amount;
				break;
		}
		sum = sum + tmp;
	}

	return sum;
}

action action::operator=(action tmp) const
{
	action tmp_action;
	tmp_action.name = tmp.get_name();
	tmp_action.dice = tmp.get_dice();
	tmp_action.die_hit = tmp.get_die_hit();
	tmp_action.die_type = tmp.get_die_type();
	tmp_action.modifier_amount = tmp.get_modifier_amount();
	tmp_action.modifier_type = tmp.get_modifier_type();
	return tmp_action;
}

monster::monster()
{
	name = "";
	alignment = "";
	armor_class = 0;
	alive = true;
}

void monster::set_name(string name)
{
	this->name = name;
}

void monster::set_alignment(string alignment)
{
	this->alignment = alignment;
}

void monster::set_filepath(string filepath)
{
	this->filepath = filepath;
}

void monster::set_languages(vector <string> languages)
{
	for (unsigned int i=0; i<languages.size(); i++)
		this->languages.push_back(languages[i]);
}

void monster::set_armor_class(unsigned int armor_class)
{
	this->armor_class = armor_class;
}

void monster::set_monster_size(size monster_size)
{
	this->monster_size = monster_size;
}

void monster::set_monster_speed(speed monster_speed)
{
	this->monster_speed = monster_speed;
}

void monster::set_monster_equipment(vector <equipment> monster_equipment)
{
	for (unsigned int i=0; i<monster_equipment.size(); i++)
		this->monster_equipment.push_back(monster_equipment[i]);
}

void monster::set_monster_ability(vector <ability> monster_ability)
{
	for (unsigned int i=0; i<monster_ability.size(); i++)
		this->monster_ability.push_back(monster_ability[i]);
}

void monster::set_alive(bool alive)
{
	this->alive = alive;
}

void monster::add_equipment(equipment monster_equipment)
{
	this->monster_equipment.push_back(monster_equipment);
}

void monster::load(string filepath)
{
	string tmp;
	string lang_tmp;
	string data[2];
	ifstream fin;
	fin.open(filepath);
	while (fin)
	{
		fin >> tmp;
		data[0] = tmp.substr(0, tmp.find('|'));
		data[1] = tmp.substr(tmp.find('|') + 1, tmp.length());
		if (data[0] == "Name")
			name = data[1];
		if (data[0] == "Alignment")
			alignment = data[1];
		if (data[0] == "Languages")
		{
			lang_tmp = data[1];
			for (unsigned int i=0; i<lang_tmp.length(); i=i+lang_tmp.find(',', tmp.length()))
				languages.push_back(lang_tmp.substr(i, lang_tmp.find(',', tmp.length())));
		}
		if (data[0] == "Armor Class")
			armor_class = stoi(data[1]);
		if (data[0] == "Monster Size")
			monster_size.set_space(stoi(data[1]));
		if (data[0] == "Monster Speed")
			monster_speed.set_rate(stoi(data[1]));
		if (data[0] == "Alive")
		{
			if (data[1] == "0")
				alive = true;
			else
				alive = false;
		}
	}
	fin.close();
}

void monster::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);

	
	fout << "Name|" << name << endl;
	fout << "Alignment|" << alignment << endl;
	fout << "Languages|";
	for (unsigned int i=0; i<languages.size()-1; i++)
		fout << languages[i] << ",";
	fout << languages[languages.size()-1] << endl;
	fout << "Armor Class|" << armor_class << endl;
	fout << "Monster Size|" << monster_size.get_space() << endl;
	fout << "Monster Speed|" << monster_speed.get_rate() << endl;
	fout << "Alive|" << alive << endl;

	fout.close();
}

string monster::get_name()
{
	return name;
}

string monster::get_alignment()
{
	return alignment;
}

vector <string> monster::get_languages()
{
	return languages;
}

string monster::get_filepath()
{
	return filepath;
}

unsigned int monster::get_armor_class()
{
	return armor_class;
}

size monster::get_monster_size()
{
	return monster_size;
}

speed monster::get_monster_speed()
{
	return monster_speed;
}

vector <equipment> monster::get_monster_equipment()
{
	return monster_equipment;
}

vector <ability> monster::get_monster_ability()
{
	return monster_ability;
}

bool monster::is_alive()
{
	return alive;
}
