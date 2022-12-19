#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <ncurses.h>
#include <sqlite3.h>
#include <string>
#include <vector>
#include "character.h"
using namespace std;
namespace fs = std::filesystem;

vector <string> languages;

void load_languages(sqlite3 *db);
int lang_callback(void *NotUsed, int argc, char **argv, char **azColName);

int main(int argc, char *argv[])
{
	sqlite3 *db = NULL;
	load_languages(db);

	for (unsigned int i=0; i<languages.size(); i++)
		cout << languages.at(i) << endl;

	return 0;
}

void load_languages(sqlite3 *db)
{
	int rc;
	char *zErrMsg;
	rc = sqlite3_open("/home/daemoneye/.dnd.db", &db);
	string sql = "SELECT * FROM 'languages';";
	if (rc)
	{
		cout << "Unable to open database." << endl;
		return;
	}
	rc = sqlite3_exec(db, sql.c_str(), lang_callback, 0, &zErrMsg);
}

int lang_callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	languages.push_back(argv[0]);
	return 0;
}
