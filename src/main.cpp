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

void load(sqlite3 *db);
int lang_callback(void *NotUsed, int argc, char **argv, char **azColName);
int equip_callback( void *NotUsed, int argc, char **argv, char **azColName);

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
	rc = sqlite3_open("/home/daemoneye/.dnd.db", &db);
	string lang_sql = "SELECT * FROM 'languages';";
	string equip_sql = "SELECT * FROM 'equipment';";
	if (rc)
	{
		cout << "Unable to open database." << endl;
		return;
	}
	rc = sqlite3_exec(db, lang_sql.c_str(), lang_callback, 0, &zErrMsg);
	rc = sqlite3_exec(db, equip_sql.c_str(), equip_callback, 0, &zErrMsg);

	for (unsigned int i=0; i<equipment_list.size(); i++)
		cout << "Name: " << equipment_list[i].get_name() << "; Price: " << equipment_list[i].get_price() << "; Weight: " << equipment_list[i].get_weight() << endl;
}

int lang_callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	languages.push_back(argv[0]);
	return 0;
}

int equip_callback( void *NotUsed, int argc, char **argv, char **azColName)
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
