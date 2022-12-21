#!/bin/bash

# Function calls to generate sqlite3 database
function sql_languages() { echo -e "\e[1A\e[KAdding Languages ($2/$3)" ; sqlite3 $HOME/.dnd.db "insert or ignore into languages (name) values ('$1');" ; }
function sql_equipment() { echo -e "\e[1A\e[KAdding Equipment ($4/$5)" ; sqlite3 $HOME/.dnd.db "insert or ignore into equipment (name, price, weight) values ('$1', '$2', '$3');" ; }
function sql_spells() { sqlite3 $HOME/.dnd.db "insert or ignore into spells (class, name, level, cast_time, range, duration) values ('$1', '$2', '$3', '$4', '$5', '$6');" ; }

# Check if sqlite3 is installed
if ! [ -x "$(command -v sqlite3)" ]
then
	echo "Error: sqlite3 is not installed." >&2
	exit 1
else
	echo "Found sqlite3." >&2
fi

echo "Adding Languages"
sqlite3 $HOME/.dnd.db "create table if not exists languages (name TEXT, UNIQUE(name));"
sql_languages 'Common' 1 17
sql_languages 'Dwarvish' 2 17
sql_languages 'Elvish' 3 17
sql_languages 'Giant' 4 17
sql_languages 'Gnomish' 5 17
sql_languages 'Goblin' 6 17
sql_languages 'Halfling' 7 17
sql_languages 'Orc' 8 17
sql_languages 'Abyssal' 9 17
sql_languages 'Celestial' 10 17
sql_languages 'Draconic' 11 17
sql_languages 'Deep\ Speech' 12 17
sql_languages 'Infernal' 13 17
sql_languages 'Primordial' 14 17
sql_languages 'Sylvan' 15 17
sql_languages 'Undercommon' 16 17
sql_languages 'Druidic' 17 17

echo "Adding Equipment"
sqlite3 $HOME/.dnd.db "create table if not exists equipment (name TEXT, price TEXT, weight TEXT, UNIQUE(name, price, weight));"
sql_equipment 'Abacus' 2 2 1 135
sql_equipment 'Acid (vial)' 25 1 2 135
sql_equipment 'Alchemists fire (flask)' 50 1 3 135
sql_equipment 'Alchemists supplies' 50 8 4 135
sql_equipment 'Antitoxin (vial)' 50 0 5 135
sql_equipment 'Arrows (20)' 1 1 6 135
sql_equipment 'Backpack' 2 5 7 135
sql_equipment 'Bagpipes' 30 6 8 135
sql_equipment 'Ball bearings (bag of 1000)' 1 2 9 135
sql_equipment 'Barrel' 2 70 10 135
sql_equipment 'Basket' 0.4 2 11 135
sql_equipment 'Bedroll' 1 7 12 135
sql_equipment 'Bell' 1 0 13 135
sql_equipment 'Blanket' 0.5 3 14 135
sql_equipment 'Block and tackle' 1 5 15 135
sql_equipment 'Blowgun needles (50)' 1 1 16 135
sql_equipment 'Book' 25 5 17 135
sql_equipment 'Glass Bottle' 2 2 18 135
sql_equipment 'Brewers Supplies' 20 9 19 135
sql_equipment 'Bucket' 0.05 2 20 135
sql_equipment 'Calligraphers Supplies' 10 5 21 135
sql_equipment 'Caltrops (bag of 20)' 1 2 22 135
sql_equipment 'Candle' 0.01 0 23 135
sql_equipment 'Carpenters Tools' 8 6 24 135
sql_equipment 'Cartographers Tools' 15 6 25 135
sql_equipment 'Case crossbow bolt' 1 1 26 135
sql_equipment 'Case map or scroll' 1 1 27 135
sql_equipment 'Chain (10 feet)' 5 10 28 135
sql_equipment 'Chalk (1 piece)' 0.01 0 29 135
sql_equipment 'Chest' 5 25 30 135
sql_equipment 'Climbers kit' 25 12 31 135
sql_equipment 'Clothes Common' 0.5 3 32 135
sql_equipment 'Clothes Costume' 5 4 33 135
sql_equipment 'Clothes Fine' 15 6 34 135
sql_equipment 'Clothes Travelers' 2 4 35 135
sql_equipment 'Cobblers Tools' 5 5 36 135
sql_equipment 'Component pouch' 25 2 37 135
sql_equipment 'Cooks Utensils' 1 8 38 135
sql_equipment 'Crossbow bolts (20)' 1 1.5 39 135
sql_equipment 'Crowbar' 2 5 40 135
sql_equipment 'Crystal' 10 1 41 135
sql_equipment 'Dice Set' 0.1 0 42 135
sql_equipment 'Disguise Kit' 25 3 43 135
sql_equipment 'Dragonchess Set' 1 0.5 44 135
sql_equipment 'Drum' 6 3 45 135
sql_equipment 'Dulcimer' 25 10 46 135
sql_equipment 'Fishing tackle' 1 4 47 135
sql_equipment 'Flask or tankard' 0.02 1 48 135
sql_equipment 'Flute' 2 1 49 135
sql_equipment 'Forgery Kit' 15 5 50 135
sql_equipment 'Glassblowers Tools' 30 5 51 135
sql_equipment 'Grappling hook' 2 4 52 135
sql_equipment 'Hammer sledge' 2 10 53 135
sql_equipment 'Hammer' 1 3 54 135
sql_equipment 'Healers kit' 5 3 55 135
sql_equipment 'Herbalism Kit' 5 3 56 135
sql_equipment 'Holy Symbol (Amulet)' 5 1 57 135
sql_equipment 'Holy Symbol (Emblem)' 5 0 58 135
sql_equipment 'Holy Symbol (Reliquary)' 5 2 59 135
sql_equipment 'Holy water (flask)' 25 1 60 135
sql_equipment 'Horn' 3 2 61 135
sql_equipment 'Hourglass' 25 1 62 135
sql_equipment 'Hunting trap' 5 25 63 135
sql_equipment 'Ink (1 ounce bottle)' 10 0 64 135
sql_equipment 'Ink pen' 0.02 0 65 135
sql_equipment 'Jewelers Tools' 25 2 66 135
sql_equipment 'Jug or pitcher' 0.02 4 67 135
sql_equipment 'Ladder (10-foot)' 0.1 25 68 135
sql_equipment 'Lamp' 0.5 1 69 135
sql_equipment 'Lantern bullseye' 10 2 70 135
sql_equipment 'Lantern hooded' 5 2 71 135
sql_equipment 'Leatherworkers Tools' 5 5 72 135
sql_equipment 'Lock' 10 1 73 135
sql_equipment 'Lute' 35 2 74 135
sql_equipment 'Lyre' 30 2 75 135
sql_equipment 'Magnifying glass' 100 0 76 135
sql_equipment 'Manacles' 2 6 77 135
sql_equipment 'Masons Tools' 10 8 78 135
sql_equipment 'Mess kit' 0.2 1 79 135
sql_equipment 'Mirror steel' 5 0.5 80 135
sql_equipment 'Navigators Tools' 25 2 81 135
sql_equipment 'Oil (flask)' 0.1 1 82 135
sql_equipment 'Orb' 20 3 83 135
sql_equipment 'Painters Supplies' 10 5 84 135
sql_equipment 'Pan flute' 12 2 85 135
sql_equipment 'Paper (one sheet)' 0.2 0 86 135
sql_equipment 'Parchment (one sheet)' 0.1 0 87 135
sql_equipment 'Perfume (vial)' 5 0 88 135
sql_equipment 'Pick miners' 2 10 89 135
sql_equipment 'Piton' 0.05 0.25 90 135
sql_equipment 'Playing Card Set' 5 0 91 135
sql_equipment 'Poison basic (vial)' 100 0 92 135
sql_equipment 'Poisoners Kit' 50 2 93 135
sql_equipment 'Pole (10-foot)' 0.05 7 94 135
sql_equipment 'Potion of healing' 50 0.5 95 135
sql_equipment 'Pot iron' 2 10 96 135
sql_equipment 'Potters Tools' 10 3 97 135
sql_equipment 'Pouch' 0.5 1 98 135
sql_equipment 'Quiver' 1 1 99 135
sql_equipment 'Ram portable' 4 35 100 135
sql_equipment 'Rations (1 day)' 0.5 2 101 135
sql_equipment 'Robes' 1 4 102 135
sql_equipment 'Rod' 10 2 103 135
sql_equipment 'Rope hempen (50 feet)' 1 10 104 135
sql_equipment 'Rope silk (50 feet)' 10 5 105 135
sql_equipment 'Sack' 0.01 0.5 106 135
sql_equipment 'Scale merchants' 5 3 107 135
sql_equipment 'Sealing wax' 0.5 0 108 135
sql_equipment 'Shawm' 2 1 109 135
sql_equipment 'Shovel' 2 5 110 135
sql_equipment 'Signal whistle' 0.05 0 111 135
sql_equipment 'Signet ring' 5 0 112 135
sql_equipment 'Sling bullets (20)' 0.04 1.5 113 135
sql_equipment 'Smiths Tools' 20 8 114 135
sql_equipment 'Spellbook' 50 3 115 135
sql_equipment 'Spikes iron (10)' 1 5 116 135
sql_equipment 'Sprig of mistletoe' 1 0 117 135
sql_equipment 'Spyglass' 1000 1 118 135
sql_equipment 'Staff' 5 4 119 135
sql_equipment 'Tent two-person' 2 20 120 135
sql_equipment 'Thieves Tools' 25 1 121 135
sql_equipment 'Three-Dragon Ante Set' 1 0 122 135
sql_equipment 'Tinderbox' 0.5 1 123 135
sql_equipment 'Tinkers Tools' 50 10 124 135
sql_equipment 'Torch' 0.01 1 125 135
sql_equipment 'Totem' 1 0 126 135
sql_equipment 'Vial' 1 0 127 135
sql_equipment 'Viol' 30 1 128 135
sql_equipment 'Wand' 10 1 129 135
sql_equipment 'Waterskin' 0.2 5 130 135
sql_equipment 'Weavers tools' 1 5 131 135
sql_equipment 'Whetstone' 0.01 1 132 135
sql_equipment 'Woodcarvers Tools' 1 5 133 135
sql_equipment 'Wooden staff' 5 4 134 135
sql_equipment 'Yew Wand' 10 1 135 135

echo "Adding spells"
sqlite3 $HOME/.dnd.db "create table if not exists spells (class TEXT, name TEXT, level TEXT, cast_time TEXT, range TEXT, duration TEXT, UNIQUE(class, name, level, cast_time, range, duration));"
sql_spells "Bard" 'Blade Ward' 0 '1 action' 'self' '1 round'
sql_spells 'Bard' 'Dancing Lights' 0 '1 action' '120 feet' 'concentration, up to 1 minute'
sql_spells 'Bard' 'Friends' 0 '1 action' 'self' 'concentration, up to 1 minute'
sql_spells 'Bard' 'Light' 0 '1 action' 'touch' '1 hour'
sql_spells 'Bard' 'Mage Hand' 0 '1 action' '30 feet' '1 minute'
sql_spells 'Bard' 'Mending' 0 '1 minute' 'touch' 'instantaneous'
sql_spells 'Bard' 'Message' 0 '1 action' '120 feet' '1 round'
sql_spells 'Bard' 'Minor Illusion' 0 '1 action' '30 feet' '1 minute'
sql_spells 'Bard' 'Prestidgitation' 0 '1 action' '10 feet' 'Up to 1 hour'
sql_spells 'Bard' 'True Strike' 0 '1 action' '30 feet' 'concentration, up to 1 round'
sql_spells 'Bard' 'Vicious Mockery' 0 '1 action' '60 feet' 'Instantaneous'
sql_spells 'Bard' 'Animal Friendship' 1 '' '' ''
sql_spells 'Bard' 'Bane' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 1 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 2 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 3 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 4 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 5 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 6 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 7 '' '' ''
sql_spells 'Bard' '' 8 '' '' ''
sql_spells 'Bard' '' 8 '' '' ''
sql_spells 'Bard' '' 8 '' '' ''
sql_spells 'Bard' '' 8 '' '' ''
sql_spells 'Bard' '' 8 '' '' ''
sql_spells 'Bard' '' 9 '' '' ''
sql_spells 'Bard' '' 9 '' '' ''
sql_spells 'Bard' '' 9 '' '' ''
sql_spells 'Bard' '' 9 '' '' ''
