#!/bin/bash

if ! [ -x "$(command -v sqlite3)" ]
then
	echo "Error: sqlite3 is not installed." >&2
	exit 1
else
	echo "Found sqlite3." >&2
fi
