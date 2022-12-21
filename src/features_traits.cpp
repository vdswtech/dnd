#include "features_traits.h"

features_traits::features_traits()
{
	name = "";
	source = "";
	source_type = "";
	description = "";
}

void features_traits::set_name(string name)
{
	this->name = name;
}

void features_traits::set_source(string source)
{
	this->source = source;
}

void features_traits::set_source_type(string source_type)
{
	this->source_type = source_type;
}

void features_traits::set_description(string description)
{
	this->description = description;
}

string features_traits::get_name()
{
	return name;
}

string features_traits::get_source()
{
	return source;
}

string features_traits::get_source_type()
{
	return source_type;
}

string features_traits::get_description()
{
	return description;
}
