#!/bin/bash

if ! [ -x "$(command -v sqlite3)" ]
then
	echo "Error: sqlite3 is not installed." >&2
	exit 1
else
	echo "Found sqlite3." >&2
fi

sqlite3 $HOME/.dnd.db "create table languages (name TEXT);"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Common');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Dwarvish');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Elvish');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Giant');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Gnomish');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Goblin');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Halfling');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Orc');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Abyssal');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Celestial');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Draconic');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Deep Speech');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Infernal');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Primordial');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Sylvan');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Undercommon');"
sqlite3 $HOME/.dnd.db "insert into languages (name) values ('Druidic');"

echo "Languages"
echo "========="
sqlite3 $HOME/.dnd.db "select * from languages;"
