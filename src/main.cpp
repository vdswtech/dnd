#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <sqlite3.h>
#include <string>
#include <vector>
#include "character.h"
using namespace std;
namespace fs = std::filesystem;

vector <string> languages;
vector <equipment> equipment_list;
vector <spells> spell_list;
vector <character> characters;

void load(sqlite3 *db);
int lang_callback(void *NotUsed, int argc, char **argv, char **azColName);
int equip_callback(void *NotUsed, int argc, char **argv, char **azColName);
int spells_callback(void *NotUsed, int argc, char **argv, char **azColName);
int character_callback(void *NotUsed, int argc, char **argv, char **azColName);

int main(int argc, char *argv[])
{
	sqlite3 *db = NULL;
	load(db);

	return 0;
}

void load(sqlite3 *db)
{
	int rc;
	char *zErrMsg;
	string database_path = getenv("HOME");
	database_path = database_path + "/.dnd.db";
	rc = sqlite3_open(database_path.c_str(), &db);
	string lang_sql = "SELECT * FROM 'languages';";
	string equip_sql = "SELECT * FROM 'equipment';";
	string spells_sql = "SELECT * FROM 'spells';";
	string character_sql = "SELECT * FROM 'character';";
	if (rc)
	{
		cout << "Unable to open database." << endl;
		return;
	}
	rc = sqlite3_exec(db, lang_sql.c_str(), lang_callback, 0, &zErrMsg);
	rc = sqlite3_exec(db, equip_sql.c_str(), equip_callback, 0, &zErrMsg);
	rc = sqlite3_exec(db, spells_sql.c_str(), spells_callback, 0, &zErrMsg);
	rc = sqlite3_exec(db, character_sql.c_str(), character_callback, 0, &zErrMsg);
}

int lang_callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	languages.push_back(argv[0]);
	return 0;
}

int equip_callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	equipment tmp;
	string tmp_string = "";
	for (int i=0; i<argc; i=i+3)
	{
		tmp_string = argv[i];
		tmp.set_name(tmp_string);
		tmp.set_price(atoll(argv[i+1]));
		tmp.set_weight(atof(argv[i+2]));
		equipment_list.push_back(tmp);
	}
	return 0;
}

int spells_callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	spells tmp;
	for (int i=0; i<argc; i=i+6)
	{
		tmp.set_name(argv[i]);
		tmp.set_char_class(argv[i+1]);
		tmp.set_cast_time(argv[i+2]);
		tmp.set_range(argv[i+3]);
		tmp.set_duration(argv[i+4]);
		tmp.set_level(atoll(argv[i+5]));
		spell_list.push_back(tmp);
	}
	return 0;
}

int character_callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	character tmp;
	for (int i=0; i<argc; i++)
	{
		tmp.load(string(argv[i][0]);
		characters.push_back(tmp);
	}
	return 0;
}
