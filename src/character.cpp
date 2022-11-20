#include "character.h"
using namespace std;

#define UNDERINE "\0333[4m"

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

void attack::load(string filepath)
{
	string split[2];
	string tmp;
	ifstream fin;
	fin.open(filepath);

	while (fin)
	{
		fin >> tmp;
		split[0] = tmp.substr(0, tmp.find('|'));
		split[1] = tmp.substr(tmp.find('|') + 1, tmp.length());

		if (split[0] == "Name")
			name = split[1];
		if (split[0] == "Attack DC")
			attack_dc = stoi(split[1]);
		if (split[0] == "Attack")
			atk = stoi(split[1]);
		if (split[0] == "Dice count")
			dice_count = stoi(split[1]);
		if (split[0] == "Dice type")
			dice_type = stoi(split[1]);
		if (split[0] == "Damage type")
			damage_type = split[1];
	}

	fin.close();
}

void attack::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);

	fout << "Name|" << name << endl;
	fout << "Attack DC|" << attack_dc << endl;
	fout << "Attack|" << atk << endl;
	fout << "Dice count|" << dice_count << endl;
	fout << "Dice type|" << dice_type << endl;
	fout << "Damage type|" << damage_type << endl;

	fout.close();
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

unsigned int attack::roll(unsigned int dice, unsigned int pip)
{
	unsigned int total = 0;
	srand (time(NULL));

	for (unsigned int i=0; i<dice; i++)
		total = total + rand() % pip;

	return total;
}

attack attack::operator=(attack tmp) const
{
	attack atk;
	atk.set_name(tmp.get_name());
	atk.set_attack_dc(tmp.get_attack_dc());
	atk.set_attack(tmp.get_attack());
	atk.set_dice_count(tmp.get_dice_count());
	atk.set_dice_type(tmp.get_dice_type());
	atk.set_damage_type(tmp.get_damage_type());
	return atk;
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

void deathsave::set_success(bool *success, unsigned int count)
{
	for (unsigned int i=0; i<count; i++)
		this->success[i] = success[i];
}

void deathsave::set_failures(bool *failures, unsigned int count)
{
	for (unsigned int i=0; i<count; i++)
		this->failures[i] = failures[i];
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

bool deathsave::get_success(unsigned int pos)
{
	return success[pos];
}

bool deathsave::get_failures(unsigned int pos)
{
	return failures[pos];
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

void featurestraits::load(string filepath)
{
	string split[2];
	string tmp;
	ifstream fin;
	fin.open(filepath);

	while (fin)
	{
		fin >> tmp;
		split[0] = tmp.substr(0, tmp.find('|'));
		split[1] = tmp.substr(tmp.find('|') + 1, tmp.length());

		if (split[0] == "Name")
			name = split[1];
		if (split[0] == "Source")
			source = split[1];
		if (split[0] == "Source type")
			source_type = split[1];
		if (split[0] == "About")
			about = split[1];
		if (split[0] == "Char class")
			char_class = split[1];
	}

	fin.close();
}

void featurestraits::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);
	fout << "Name|" << name << endl;
	fout << "Source|" << source << endl;
	fout << "Source type|" << source_type << endl;
	fout << "About|" << about << endl;
	fout << "Char class|" << char_class << endl;
	fout.close();
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

string featurestraits::get_char_class()
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

void items::load(string filepath)
{
	string tmp;
	string split[2];
	ifstream fin;
	fin.open(filepath);
	while (fin)
	{
		fin >> tmp;
		split[0] = tmp.substr(0, tmp.find('|'));
		split[1] = tmp.substr(tmp.find('|') + 1, tmp.length());

		if (split[0] == "Name")
			name = split[1];
		if (split[0] == "Count")
			count = stoi(split[1]);
		if (split[0] == "Attack")
			weight = stod(split[1]);
	}
}

void items::save(string filepath)
{
	ofstream fout;
	fout.open(filepath);
	fout << "Name|" << name << endl;
	fout << "Count|" << count << endl;
	fout << "Weight|" << weight << endl;
	fout.close();
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

items items::operator=(items tmp) const
{
	items item;
	item.set_name(tmp.get_name());
	item.set_count(tmp.get_count());
	item.set_weight(tmp.get_weight());
	return item;
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

skills skills::operator=(skills tmp_skill) const
{
	skills tmp;
	tmp.set_name(tmp_skill.get_name());
	tmp.set_proficiency(tmp_skill.get_proficiency());
	tmp.set_value(tmp_skill.get_value());
	return tmp;
}

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

void character::set_atk(vector <attack> atk)
{
	this->atk = atk;
}

void character::set_attr(attributes attr)
{
	this->attr = attr;
}

void character::set_deathsave(deathsave saves)
{
	this->saves = saves;
}

void character::set_features(featurestraits feattraits)
{
	this->feattraits = feattraits;
}

void character::set_items(vector <items> item)
{
	this->item = item;
}

void character::set_money(money coin)
{
	this->coin = coin;
}

void character::set_prof(proficiency prof)
{
	this->prof = prof;
}

void character::set_saving_throws(savingthrows throws)
{
	this->throws = throws;
}

void character::set_skills(vector <skills> skill)
{
	this->skill = skill;
}

void character::load(string filepath)
{
}

void character::save(string dirpath)
{
	string filepath = dirpath + "/" + name;
	ofstream fout;
	fout.open(filepath);

	fout << "Name|" << name << endl;
	fout << "Race|" << race<< endl;
	fout << "Character Class|" << char_class << endl;
	fout << "Background|" << background << endl;
	fout << "Alignment|" << alignment << endl;
	fout << "Traits|" << traits << endl;
	fout << "Ideals|" << ideals << endl;
	fout << "Bonds|" << bonds << endl;
	fout << "Flaws|" << flaws << endl;
	fout << "Level|" << level << endl;
	fout << "Experience|" << experience << endl;
	fout << "Armor Class|" << armor_class << endl;
	fout << "Initiative|" << initiative << endl;
	fout << "Speed|" << speed << endl;
	fout << "Proficiency Bonus|" << proficiency_bonus << endl;
	fout << "Hit Die|" << hit_die << endl;
	fout << "Inspiration|" << inspiration << endl;

	for (unsigned int i=0; i<atk.size(); i++)
		fout << "Attack|" << atk[i].get_name() << "|" << atk[i].get_attack_dc() << "|" << atk[i].get_attack() << "|" << atk[i].get_dice_count() << "|" << atk[i].get_dice_type() <<"|" << atk[i].get_damage_type() << endl;
	fout << "Attributes|" << attr.get_name() << "|" << attr.get_proficiency() << "|" << attr.get_value() << endl;
	fout << "Death Saves|success&";
	for (unsigned int i=0; i<DEATH_SAVE_COUNT-1; i++)
		fout << saves.get_success(i) << "|";
	fout << saves.get_success(DEATH_SAVE_COUNT-1) << endl;
	fout << "Death Saves|failures&";
	for (unsigned int i=0; i<DEATH_SAVE_COUNT-1; i++)
		fout << saves.get_failures(i) << "|";
	fout << saves.get_failures(DEATH_SAVE_COUNT-1) << endl;
	fout << "Features and Traits|" << feattraits.get_name() << "|" << feattraits.get_source() << "|" << feattraits.get_source_type() << "|" << feattraits.get_about() << "|" << feattraits.get_char_class() << endl;
	for (unsigned int i=0; i<item.size(); i++)
		fout << "ITEM|" << item[i].get_name() << "|" << item[i].get_count() << "|"<< item[i].get_weight() << endl;
	fout << "Coin|" << coin.get_cp() << "|" << coin.get_sp() << "|" << coin.get_ep() << "|" << coin.get_gp() << "|" << coin.get_pp() << endl;
	fout << "Proficiency|" << prof.get_type() << "|" << prof.get_proficiency() << endl;
	fout << "Saving Throws|" << throws.get_name() << "|" << throws.get_proficiency() << "|" << throws.get_value() << endl;
	for (unsigned int i=0; i<skill.size(); i++)
		fout << "Skills|" << skill[i].get_name() << "|" << skill[i].get_proficiency() << "|" << skill[i].get_value() << endl;

	fout.close();
}

void character::levelup(unsigned int levels, unsigned int xp)
{
	level = level + levels;
	experience = experience + xp;
}

void character::display()
{
	cout << "Name: " << name << "(" << race << " " << char_class << ")" << "; Level " << level << "(" << experience << " XP)"<< endl;
	cout << "Armor Class: " << armor_class << "; Initiative: " << initiative << "; Speed: " << speed << endl;
	// cout << "Alignment: " << alignment << end;
	cout << "Background: " << background << endl;
	cout << "Traits: " << traits << endl;
	cout << "Ideals: " << ideals << endl;
	cout << "Bonds: " << bonds << endl;
	cout << "Flaws: " << flaws;
	cout << "Attacks: ";
	for (unsigned int i=0; i<atk.size()-1; i++)
		cout << atk[i].get_name() << ", ";
	cout << atk[atk.size()-1].get_name() << endl;
	cout << "Items: ";
	for (unsigned int i=0; i<item.size()-1; i++)
		cout << item[i].get_name() << ", ";
	cout << item[item.size()-1].get_name() << endl;
	cout << "Skills: ";
	cout << "Money: " << coin.get_cp() << " CP, " << coin.get_sp() << " SP, " << coin.get_ep() << " EP, " << coin.get_gp() << " GP, " << coin.get_pp() << " GP" << endl;
	for (unsigned int i=0; i<skill.size()-1; i++)
		cout << skill[i].get_name() << ", ";
	cout << skill[skill.size()-1].get_name() << endl;
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

vector <attack> character::get_atk()
{
	return atk;
}

attributes character::get_attr()
{
	return attr;
}

deathsave character::get_saves()
{
	return saves;
}

featurestraits character::get_feattraits()
{
	return feattraits;
}

vector <items> character::get_item()
{
	return item;
}

money character::get_coin()
{
	return coin;
}

proficiency character::get_prof()
{
	return prof;
}

savingthrows character::get_throws()
{
	return throws;
}

vector <skills> character::get_skill()
{
	return skill;
}

void character::add_attack(attack tmp)
{
	atk.push_back(tmp);
}

void character::add_attack(vector <attack> tmp)
{
	for (unsigned int i=0; i<tmp.size(); i++)
		atk.push_back(tmp[i]);
}

void character::add_item(items tmp)
{
	item.push_back(tmp);
}

void character::add_item(vector <items> tmp)
{
	for (unsigned int i=0; i<tmp.size(); i++)
		item.push_back(tmp[i]);
}

void character::add_skill(skills tmp)
{
	skill.push_back(tmp);
}

void character::add_skill(vector <skills> tmp)
{
	for (unsigned int i=0; i<tmp.size(); i++)
		skill.push_back(tmp[i]);
}
