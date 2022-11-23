#include <filesystem>
#include <iostream>
#include <vector>
#include "equipment.h"
using namespace std;
namespace fs = std::filesystem;

void load_equipment(string directory, vector <equipment> *items);

int main(int argc, char *argv[])
{
	vector <equipment> items;

	string path = "/home/daemoneye/Documents/code/cpp/dnd/txt/equipment";
	load_equipment(path, &items);
	return 0;
}

void load_equipment(string directory, vector <equipment> *items)
{
	equipment tmp;
	for (const auto & entry : fs::directory_iterator(directory))
	{
		tmp.load(entry.path());
		cout << "[+] Loaded " << tmp.get_name() << endl;
		items->push_back(tmp);
	}
}
