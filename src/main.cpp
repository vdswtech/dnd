#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
#include "character.h"
using namespace std;
namespace fs = std::filesystem;

void load_items(string path, vector <equipment> *items);
void load_languages(string path, vector <string> *languages);
void display_items(vector <equipment> *items);
void display_languages(vector <string> *languages);

int main(int argc, char *argv[])
{
	string equipment_path = "/home/daemoneye/Documents/code/cpp/dnd/txt/equipment";
	string languages_path = "/home/daemoneye/Documents/code/cpp/dnd/txt/languages.txt";

	vector <equipment> items;
	vector <string> languages;

	load_items(equipment_path, &items);
	load_languages(languages_path, &languages);
	display_items(&items);
	display_languages(&languages);

	return 0;
}

void load_items(string path, vector <equipment> *items)
{
	equipment tmp;
	for (const auto & entry : fs::directory_iterator(path))
	{
		tmp.load(entry.path());
		items->push_back(tmp);
	}
}

void load_languages(string path, vector <string> *languages)
{
	string language;
	fstream fin;
	fin.open(path);
	while (fin)
	{
		getline(fin, language);
		languages->push_back(language);
	}
	fin.close();
}

void display_items(vector <equipment> *items)
{
	for (unsigned int i=0; i<items->size(); i++)
		cout << items->at(i).get_name() << " costs " << items->at(i).get_price() << " and weighs " << items->at(i).get_weight() << endl;
}

void display_languages(vector <string> *languages)
{
	for (unsigned int i=0; i<languages->size(); i++)
		cout << languages->at(i) << endl;
}
