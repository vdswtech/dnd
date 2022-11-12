#include "character.h"

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
	coin.CP = 0;
	coin.SP = 0;
	coin.ep = 0;
	coin.gp = 0;
	coin.pp = 0;

	for (unsigned int i=0; i<DEATH_SAVE_COUNT; i++)
	{
		death_save.success[i] = false;
		death_save.failures[i] = false;
	}
}
