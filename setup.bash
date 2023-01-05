#!/bin/bash

# Function calls to generate sqlite3 database
function sql_languages() { echo -e "\e[1A\e[KAdding Languages ($2/$3)" ; sqlite3 $HOME/.dnd.db "insert or ignore into languages (name) values ('$1');" ; }
function sql_equipment() { echo -e "\e[1A\e[KAdding Equipment ($4/$5)" ; sqlite3 $HOME/.dnd.db "insert or ignore into equipment (name, price, weight) values ('$1', '$2', '$3');" ; }
function sql_spells() { echo -e "\e[1A\e[KAdding Spells ($7/$8)" ; sqlite3 $HOME/.dnd.db "insert or ignore into spells (class, name, level, cast_time, range, duration) values ('$1', '$2', '$3', '$4', '$5', '$6');" ; }

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
sql_spells 'Bard' 'Dancing Lights' 0 '1 action' '120 feet' 'Concentration, up to 1 minute' 1 681
sql_spells 'Bard' 'Light' 0 '1 action' 'Touch' '1 hour' 2 681
sql_spells 'Bard' 'Mage Hand' 0 '1 action' '30 feet' '1 minute' 3 681
sql_spells 'Bard' 'Mending' 0 '1 minute' 'Touch' 'Instantaneous' 4 681
sql_spells 'Bard' 'Message' 0 '1 action' '120 feet' '1 round' 5 681
sql_spells 'Bard' 'Minor Illusion' 0 '1 action' '30 feet' '1 minute' 6 681
sql_spells 'Bard' 'True Strike' 0 '1 action' '30 feet' 'Concentration, up to 1 round' 7 681
sql_spells 'Bard' 'Vicious Mockery' 0 '1 action' '60 feet' 'Instantaneous' 8 681
sql_spells 'Bard' 'Animal Friendship' 1 '1 action' '30 feet' '24 hours' 9 681
sql_spells 'Bard' 'Bane' 1 '1 action' '30 feet' 'Concentration, up to 1 minute' 10 681
sql_spells 'Bard' 'Charm Person' 1 '1 action' '30 feet' '1 hour' 11 681
sql_spells 'Bard' 'Cure Wounds' 1 '1 action' 'Touch' 'Instantaneous' 12 681
sql_spells 'Bard' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 13 681
sql_spells 'Bard' 'Disguise Self' 1 '1 action' 'Self' '1 hour' 14 681
sql_spells 'Bard' 'Faerie Fire' 1 '1 action' '60 feet' 'Concentration, up to 1 minute' 15 681
sql_spells 'Bard' 'Feather Fall' 1 '1 reaction, which you take when you or a creature within 60 feet of you falls' '60 feet' '1 minute' 16 681
sql_spells 'Bard' 'Heroism' 1 '1 action' 'Touch' 'Concentration, up to 1 minute' 17 681
sql_spells 'Bard' 'Identify' 1 '1 minute' 'Touch' 'Instantaneous' 18 681
sql_spells 'Bard' 'Illusory Script' 1 '1 minute' 'Touch' '10 days' 19 681
sql_spells 'Bard' 'Longstrider' 1 '1 action' 'Touch' '1 hour' 20 681
sql_spells 'Bard' 'Silent Image' 1 '1 action' '60 feet' 'Concentration, up to 10 minutes' 21 681
sql_spells 'Bard' 'Sleep' 1 '1 action' '90 feet' '1 minute' 22 681
sql_spells 'Bard' 'Speak with Animals' 1 '1 action' 'Self' '10 minutes' 23 681
sql_spells 'Bard' 'Thunderwave' 1 '1 action' 'Self (15-foot cube)' 'Instantaneous' 24 681
sql_spells 'Bard' 'Blindness/Deafness' 2 '1 action' '30 feet' '1 minute' 25 681
sql_spells 'Bard' 'Calm Emotions' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 26 681
sql_spells 'Bard' 'Detect Thoughts' 2 '1 action' 'Self' 'Concentration, up to 1 minute' 27 681
sql_spells 'Bard' 'Enthrall' 2 '1 action' '60 feet' '1 minute' 28 681
sql_spells 'Bard' 'Heat Metal' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 29 681
sql_spells 'Bard' 'Hold Person' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 30 681
sql_spells 'Bard' 'Invisibility' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 31 681
sql_spells 'Bard' 'Knock' 2 '1 action' '60 feet' 'Instantaneous' 32 681
sql_spells 'Bard' 'Lesser Restoration' 2 '1 action' 'Touch' 'Instantaneous' 33 681
sql_spells 'Bard' 'Locate Animals or Plants' 2 '1 action' 'Self' 'Instantaneous' 34 681
sql_spells 'Bard' 'Locate Object' 2 '1 action' 'Self' 'Concentration, up to 10 minutes' 35 681
sql_spells 'Bard' 'Magic Mouth' 2 '1 minute' '30 feet' 'Until dispelled' 36 681
sql_spells 'Bard' 'See Invisibility' 2 '1 action' 'Self' '1 hour' 37 681
sql_spells 'Bard' 'Shatter' 2 '1 action' '60 feet' 'Instantaneous' 38 681
sql_spells 'Bard' 'Silence' 2 '1 action' '120 feet' 'Concentration, up to 10 minutes' 39 681
sql_spells 'Bard' 'Suggestion' 2 '1 action' '30 feet' 'Concentration, up to 8 hours' 40 681
sql_spells 'Bard' 'Zone of Truth' 2 '1 action' '60 feet' '10 minutes' 41 681
sql_spells 'Bard' 'Bestow Curse' 3 '1 action' 'Touch' 'Concentration, up to 1 minute' 42 681
sql_spells 'Bard' 'Clairvoyance' 3 '10 minutes' '1 mile' 'Concentration, up to 10 minutes' 43 681
sql_spells 'Bard' 'Dispel Magic' 3 '1 action' '120 feet' 'Instantaneous' 44 681
sql_spells 'Bard' 'Fear' 3 '1 action' 'Self (30-foot cone)' 'Concentration, up to 1 minute' 45 681
sql_spells 'Bard' 'Glyph of Warding' 3 '1 hour' 'Touch' 'Until dispelled or triggered' 46 681
sql_spells 'Bard' 'Hypnotic Pattern' 3 '1 action' '120 feet' 'Concentration, up to 1 minute' 47 681
sql_spells 'Bard' 'Major Image' 3 '1 action' '120 feet' 'Concentration, up to 10 minutes' 48 681
sql_spells 'Bard' 'Nondetection' 3 '1 action' 'Touch' '8 hours' 49 681
sql_spells 'Bard' 'Plant Growth' 3 '1 action or 8 hours' '150 feet' 'Instantaneous' 50 681
sql_spells 'Bard' 'Sending' 3 '1 action' 'Unlimited' '1 round' 51 681
sql_spells 'Bard' 'Speak with Dead' 3 '1 action' '10 feet' '10 minutes' 52 681
sql_spells 'Bard' 'Speak with Plants' 3 '1 action' 'Self (30-foot radius)' '10 minutes' 53 681
sql_spells 'Bard' 'Stinking Cloud' 3 '1 action' '90 feet' 'Concentration, up to 1 minute' 54 681
sql_spells 'Bard' 'Tongues' 3 '1 action' 'Touch' '1 hour' 55 681
sql_spells 'Bard' 'Compulsion' 4 '1 action' '30 feet' 'Concentration, up to 1 minute' 56 681
sql_spells 'Bard' 'Confusion' 4 '1 action' '90 feet' 'Concentration, up to 1 minute' 57 681
sql_spells 'Bard' 'Dimension Door' 4 '1 action' '500 feet' 'Instantaneous' 58 681
sql_spells 'Bard' 'Freedom of Movement' 4 '1 action' 'Touch' '1 hour' 59 681
sql_spells 'Bard' 'Greater Invisibility' 4 '1 action' 'Touch' 'Concentration, up to 1 minute' 60 681
sql_spells 'Bard' 'Hallucinatory Terrain' 4 '10 minutes' '300 feet' '24 hours' 61 681
sql_spells 'Bard' 'Locate Creature' 4 '1 action' 'Self' 'Concentration, up to 1 hour' 62 681
sql_spells 'Bard' 'Animate Objects' 5 '1 action' '120 feet' 'Concentration, up to 1 minute' 63 681
sql_spells 'Bard' 'Awaken' 5 '8 hours' 'Touch' 'Instantaneous' 64 681
sql_spells 'Bard' 'Dominate Person' 5 '1 action' '60 feet' 'Concentration, up to 1 minute' 65 681
sql_spells 'Bard' 'Dream' 5 '1 minute' 'Special' '8 hours' 66 681
sql_spells 'Bard' 'Geas' 5 '1 minute' '60 feet' '30 days' 67 681
sql_spells 'Bard' 'Greater Restoration' 5 '1 action' 'Touch' 'Instantaneous' 68 681
sql_spells 'Bard' 'Hold Monster' 5 '1 action' '90 feet' 'Concentration, up to 1 minute' 69 681
sql_spells 'Bard' 'Legend Lore' 5 '10 minutes' 'Self' 'Instantaneous' 70 681
sql_spells 'Bard' 'Mass Cure Wounds' 5 '1 action' '60 feet' 'Instantaneous' 71 681
sql_spells 'Bard' 'Mislead' 5 '1 action' 'Self' 'Concentration, up to 1 hour' 72 681
sql_spells 'Bard' 'Modify Memory' 5 '1 action' '30 feet' 'Concentration, up to 1 minute' 73 681
sql_spells 'Bard' 'Planar Binding' 5 '1 hour' '60 feet' '24 hours' 74 681
sql_spells 'Bard' 'Raise Dead' 5 '1 hour' 'Touch' 'Instantaneous' 75 681
sql_spells 'Bard' 'Seeming' 5 '1 action' '30 feet' '8 hours' 76 681
sql_spells 'Bard' 'Teleportation Circle' 5 '1 minute' '10 feet' '1 round' 77 681
sql_spells 'Bard' 'Eyebite' 6 '1 action' 'Self' 'Concentration, up to 1 minute' 78 681
sql_spells 'Bard' 'Find the Path' 6 '1 minute' 'Self' 'Concentration, up to 1 day' 79 681
sql_spells 'Bard' 'Guards and Wards' 6 '10 minutes' 'Touch' '24 hours' 80 681
sql_spells 'Bard' 'Mass Suggestion' 6 '1 action' '60 feet' '24 hours' 81 681
sql_spells 'Bard' 'Programmed Illusion' 6 '1 action' '120 feet' 'Until dispelled' 82 681
sql_spells 'Bard' 'True Seeing' 6 '1 action' 'Touch' '1 hour' 83 681
sql_spells 'Bard' 'Forcecage' 7 '1 action' '100 feet' '1 hour' 84 681
sql_spells 'Bard' 'Mirage Arcane' 7 '10 minutes' 'Sight' '10 days' 85 681
sql_spells 'Bard' 'Project Image' 7 '1 action' '500 miles' 'Concentration, up to 1 day' 86 681
sql_spells 'Bard' 'Regenerate' 7 '1 minute' 'Touch' '1 hour' 87 681
sql_spells 'Bard' 'Resurrection' 7 '1 hour' 'Touch' 'Instantaneous' 88 681
sql_spells 'Bard' 'Symbol' 7 '1 minute' 'Touch' 'Until dispelled or triggered' 89 681
sql_spells 'Bard' 'Teleport' 7 '1 action' '10 feet' 'Instantaneous' 90 681
sql_spells 'Bard' 'Dominate Monster' 8 '1 action' '60 feet' 'Concentration, up to 1 hour' 91 681
sql_spells 'Bard' 'Feeblemind' 8 '1 action' '150 feet' 'Instantaneous' 92 681
sql_spells 'Bard' 'Glibness' 8 '1 action' 'Self' '1 hour' 93 681
sql_spells 'Bard' 'Mind Blank' 8 '1 action' 'Touch' '24 hours' 94 681
sql_spells 'Bard' 'Power Word Stun' 8 '1 action' '60 feet' 'Instantaneous' 95 681
sql_spells 'Bard' 'Foresight' 9 '1 minute' 'Touch' '8 hours' 96 681
sql_spells 'Bard' 'Power Word Kill' 9 '1 action' '60 feet' 'Instantaneous' 97 681
sql_spells 'Bard' 'True Polymorph' 9 '1 action' '30 feet' 'Concentration, up to 1 hour' 98 681
sql_spells 'Cleric' 'Guidance' 0 '1 action' 'Touch' 'Concentration, up to 1 minute' 99 681
sql_spells 'Cleric' 'Light' 0 '1 action' 'Touch' '1 hour' 100 681
sql_spells 'Cleric' 'Mending' 0 '1 minute' 'Touch' 'Instantaneous' 101 681
sql_spells 'Cleric' 'Resistance' 0 '1 action' 'Touch' 'Concentration, up to 1 minute' 102 681
sql_spells 'Cleric' 'Sacred Flame' 0 '1 action' '60 feet' 'Instantaneous' 103 681
sql_spells 'Cleric' 'Thaumaturgy' 0 '1 action' '30 feet' 'Up to 1 minute' 104 681
sql_spells 'Cleric' 'Bless' 1 '1 action' '30 feet' 'Concentration, up to 1 minute' 105 681
sql_spells 'Cleric' 'Command' 1 '1 action' '60 feet' '1 round' 106 681
sql_spells 'Cleric' 'Cure Wounds' 1 '1 action' 'Touch' 'Instantaneous' 107 681
sql_spells 'Cleric' 'Detect Evil and Good' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 108 681
sql_spells 'Cleric' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 109 681
sql_spells 'Cleric' 'Guiding Bolt' 1 '1 action' '120 feet' '1 round' 110 681
sql_spells 'Cleric' 'Inflict Wounds' 1 '1 action' 'Touch' 'Instantaneous' 111 681
sql_spells 'Cleric' 'Protection from Evil and Good' 1 '1 action' 'Touch' 'Concentration up to 10 minutes' 112 681
sql_spells 'Cleric' 'Purify Food and Drink' 1 '1 action' '10 feet' 'Instantaneous' 113 681
sql_spells 'Cleric' 'Sanctuary' 1 '1 bonus action' '30 feet' '1 minute' 114 681
sql_spells 'Cleric' 'Shield of Faith' 1 '1 bonus action' '60 feet' 'Concentration, up to 10 minutes' 115 681
sql_spells 'Cleric' 'Aid' 2 '1 action' '30 feet' '8 hours' 116 681
sql_spells 'Cleric' 'Augury' 2 '1 minute' 'Self' 'Instantaneous' 117 681
sql_spells 'Cleric' 'Blindness/Deafness' 2 '1 action' '30 feet' '1 minute' 118 681
sql_spells 'Cleric' 'Calm Emotions' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 119 681
sql_spells 'Cleric' 'Continual Flame' 2 '1 action' 'Touch' 'Until dispelled' 120 681
sql_spells 'Cleric' 'Enhance Ability' 2 '1 action' 'Touch' 'Concentration, up to 1 hour. ' 121 681
sql_spells 'Cleric' 'Find Traps' 2 '1 action' '120 feet' 'Instantaneous' 122 681
sql_spells 'Cleric' 'Hold Person' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 123 681
sql_spells 'Cleric' 'Lesser Restoration' 2 '1 action' 'Touch' 'Instantaneous' 124 681
sql_spells 'Cleric' 'Locate Object' 2 '1 action' 'Self' 'Concentration, up to 10 minutes' 125 681
sql_spells 'Cleric' 'Prayer of Healing' 2 '10 minutes' '30 feet' 'Instantaneous' 126 681
sql_spells 'Cleric' 'Protection from Poison' 2 '1 action' 'Touch' '1 hour' 127 681
sql_spells 'Cleric' 'Silence' 2 '1 action' '120 feet' 'Concentration, up to 10 minutes' 128 681
sql_spells 'Cleric' 'Spiritual Weapon' 2 '1 bonus action' '60 feet' '1 minute' 129 681
sql_spells 'Cleric' 'Warding Bond' 2 '1 action' 'Touch' '1 hour' 130 681
sql_spells 'Cleric' 'Zone of Truth' 2 '1 action' '60 feet' '10 minutes' 131 681
sql_spells 'Cleric' 'Animate Dead' 3 '1 minute' '10 feet' 'Instantaneous' 132 681
sql_spells 'Cleric' 'Beacon of Hope' 3 '1 action' '30 feet' 'Concentration, up to 1 minute' 133 681
sql_spells 'Cleric' 'Bestow Curse' 3 '1 action' 'Touch' 'Concentration, up to 1 minute' 134 681
sql_spells 'Cleric' 'Clairvoyance' 3 '10 minutes' '1 mile' 'Concentration, up to 10 minutes' 135 681
sql_spells 'Cleric' 'Create Food and Water' 3 '1 action' '30 feet' 'Instantaneous' 136 681
sql_spells 'Cleric' 'Daylight' 3 '1 action' '60 feet' '1 hour' 137 681
sql_spells 'Cleric' 'Dispel Magic' 3 '1 action' '120 feet' 'Instantaneous' 138 681
sql_spells 'Cleric' 'Glyph of Warding' 3 '1 hour' 'Touch' 'Until dispelled or triggered' 139 681
sql_spells 'Cleric' 'Magic Circle' 3 '1 minute' '10 feet' '1 hour' 140 681
sql_spells 'Cleric' 'Mass Healing Word' 3 '1 bonus action' '60 feet' 'Instantaneous' 141 681
sql_spells 'Cleric' 'Meld into Stone' 3 '1 action' 'Touch' '8 hours' 142 681
sql_spells 'Cleric' 'Protection from Energy' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 143 681
sql_spells 'Cleric' 'Remove Curse' 3 '1 action' 'Touch' 'Instantaneous' 144 681
sql_spells 'Cleric' 'Revivify' 3 '1 action' 'Touch' 'Instantaneous' 145 681
sql_spells 'Cleric' 'Sending' 3 '1 action' 'Unlimited' '1 round' 146 681
sql_spells 'Cleric' 'Speak with Dead' 3 '1 action' '10 feet' '10 minutes' 147 681
sql_spells 'Cleric' 'Spirit Guardians' 3 '1 action' 'Self (15-foot radius)' 'Concentration, up to 10 minutes' 148 681
sql_spells 'Cleric' 'Water Walk' 3 '1 action' '30 feet' '1 hour' 149 681
sql_spells 'Cleric' 'Banishment' 4 '1 action' '60 feet' 'Concentration, up to 1 minute' 150 681
sql_spells 'Cleric' 'Control Water' 4 '1 action' '300 feet' 'Concentration, up to 10 minutes' 151 681
sql_spells 'Cleric' 'Death Ward' 4 '1 action' 'Touch' '8 hours' 152 681
sql_spells 'Cleric' 'Divination' 4 '1 action' 'Self' 'Instantaneous' 153 681
sql_spells 'Cleric' 'Freedom of Movement' 4 '1 action' 'Touch' '1 hour' 154 681
sql_spells 'Cleric' 'Guardian of Faith' 4 '1 action' '30 feet' '8 hours' 155 681
sql_spells 'Cleric' 'Locate Creature' 4 '1 action' 'Self' 'Concentration, up to 1 hour' 156 681
sql_spells 'Cleric' 'Stone Shape' 4 '1 action' 'Touch' 'Instantaneous' 157 681
sql_spells 'Cleric' 'Commune' 5 '1 minute' 'Self' '1 minute' 158 681
sql_spells 'Cleric' 'Contagion' 5 '1 action' 'Touch' '7 days' 159 681
sql_spells 'Cleric' 'Flame Strike' 5 '1 action' '60 feet' 'Instantaneous' 160 681
sql_spells 'Cleric' 'Geas' 5 '1 minute' '60 feet' '30 days' 161 681
sql_spells 'Cleric' 'Greater Restoration' 5 '1 action' 'Touch' 'Instantaneous' 162 681
sql_spells 'Cleric' 'Hallow' 5 '24 hours' 'Touch' 'Until dispelled' 163 681
sql_spells 'Cleric' 'Mass Cure Wounds' 5 '1 action' '60 feet' 'Instantaneous' 164 681
sql_spells 'Cleric' 'Planar Binding' 5 '1 hour' '60 feet' '24 hours' 165 681
sql_spells 'Cleric' 'Raise Dead' 5 '1 hour' 'Touch' 'Instantaneous' 166 681
sql_spells 'Cleric' 'Scrying' 5 '10 minutes' 'Self' 'Concentration, up to 10 minutes' 167 681
sql_spells 'Cleric' 'Blade Barrier' 6 '1 action' '90 feet' 'Concentration, up to 10 minutes' 168 681
sql_spells 'Cleric' 'Create Undead' 6 '1 minute' '10 feet' 'Instantaneous' 169 681
sql_spells 'Cleric' 'Find the Path' 6 '1 minute' 'Self' 'Concentration, up to 1 day' 170 681
sql_spells 'Cleric' 'Forbiddance' 6 '10 minutes' 'Touch' '1 day' 171 681
sql_spells 'Cleric' 'Harm' 6 '1 action' '60 feet' 'Instantaneous' 172 681
sql_spells 'Cleric' 'Heal' 6 '1 action' '60 feet' 'Instantaneous' 173 681
sql_spells 'Cleric' 'Planar Ally' 6 '10 minutes' '60 feet' 'Instantaneous' 174 681
sql_spells 'Cleric' 'True Seeing' 6 '1 action' 'Touch' '1 hour' 175 681
sql_spells 'Cleric' 'Word of Recall' 6 '1 action' '5 feet' 'Instantaneous' 176 681
sql_spells 'Cleric' 'Conjure Celestial' 7 '1 minute' '90 feet' 'Concentration, up to 1 hour' 177 681
sql_spells 'Cleric' 'Divine Word' 7 '1 bonus action' '30 feet' 'Instantaneous' 178 681
sql_spells 'Cleric' 'Fire Storm' 7 '1 action' '150 feet' 'Instantaneous' 179 681
sql_spells 'Cleric' 'Plane Shift' 7 '1 action' 'Touch' 'Instantaneous' 180 681
sql_spells 'Cleric' 'Regenerate' 7 '1 minute' 'Touch' '1 hour' 181 681
sql_spells 'Cleric' 'Resurrection' 7 '1 hour' 'Touch' 'Instantaneous' 182 681
sql_spells 'Cleric' 'Symbol' 7 '1 minute' 'Touch' 'Until dispelled or triggered' 183 681
sql_spells 'Cleric' 'Antimagic Field' 8 '1 action' 'Self (10-foot-radius sphere)' 'Concentration, up to 1 hour' 184 681
sql_spells 'Cleric' 'Control Weather' 8 '10 minutes' 'Self (5-mile radius)' 'Concentration, up to 8 hours' 185 681
sql_spells 'Cleric' 'Earthquake' 8 '1 action' '500 feet' 'Concentration, up to 1 minute' 186 681
sql_spells 'Cleric' 'Holy Aura' 8 '1 action' 'Self' 'Concentration, up to 1 minute' 187 681
sql_spells 'Cleric' 'Astral Projection' 9 '1 hour' '10 feet' 'Special' 188 681
sql_spells 'Cleric' 'Gate' 9 '1 action' '60 feet' 'Concentration, up to 1 minute' 189 681
sql_spells 'Cleric' 'Mass Heal' 9 '1 action' '60 feet' 'Instantaneous' 190 681
sql_spells 'Cleric' 'True Resurrection' 9 '1 hour' 'Touch' 'Instantaneous' 191 681
sql_spells 'Druid' 'Druidcraft' 0 '1 action' '30 feet' 'Instantaneous' 192 681
sql_spells 'Druid' 'Guidance' 0 '1 action' 'Touch' 'Concentration, up to 1 minute' 193 681
sql_spells 'Druid' 'Mending' 0 '1 minute' 'Touch' 'Instantaneous' 194 681
sql_spells 'Druid' 'Produce Flame' 0 '1 action' 'Self' '10 minutes' 195 681
sql_spells 'Druid' 'Resistance' 0 '1 action' 'Touch' 'Concentration, up to 1 minute' 196 681
sql_spells 'Druid' 'Shillelagh' 0 '1 bonus action' 'Touch' '1 minute' 197 681
sql_spells 'Druid' 'Animal Friendship' 1 '1 action' '30 feet' '24 hours' 198 681
sql_spells 'Druid' 'Charm Person' 1 '1 action' '30 feet' '1 hour' 199 681
sql_spells 'Druid' 'Create or Destroy Water' 1 '1 action' '30 feet' 'Instantaneous' 200 681
sql_spells 'Druid' 'Cure Wounds' 1 '1 action' 'Touch' 'Instantaneous' 201 681
sql_spells 'Druid' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 202 681
sql_spells 'Druid' 'Entangle' 1 '1 action' '90 feet' 'Concentration, up to 1 minute' 203 681
sql_spells 'Druid' 'Faerie Fire' 1 '1 action' '60 feet' 'Concentration, up to 1 minute' 204 681
sql_spells 'Druid' 'Fog Cloud' 1 '1 action' '120 feet' 'Concentration, up to 1 hour' 205 681
sql_spells 'Druid' 'Goodberry' 1 '1 action' 'Touch' 'Instantaneous' 206 681
sql_spells 'Druid' 'Healing Word' 1 '1 bonus action' '60 feet' 'Instantaneous' 207 681
sql_spells 'Druid' 'Jump' 1 '1 action' 'Touch' '1 minute' 208 681
sql_spells 'Druid' 'Longstrider' 1 '1 action' 'Touch' '1 hour' 209 681
sql_spells 'Druid' 'Purify Food and Drink' 1 '1 action' '10 feet' 'Instantaneous' 210 681
sql_spells 'Druid' 'Speak with Animals' 1 '1 action' 'Self' '10 minutes' 211 681
sql_spells 'Druid' 'Thunderwave' 1 '1 action' 'Self (15-foot cube)' 'Instantaneous' 212 681
sql_spells 'Druid' 'Barkskin' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 213 681
sql_spells 'Druid' 'Darkvision' 2 '1 action' 'Touch' '8 hours' 214 681
sql_spells 'Druid' 'Enhance Ability' 2 '1 action' 'Touch' 'Concentration, up to 1 hour. ' 215 681
sql_spells 'Druid' 'Find Traps' 2 '1 action' '120 feet' 'Instantaneous' 216 681
sql_spells 'Druid' 'Flame Blade' 2 '1 bonus action' 'Self' 'Concentration, up to 10 minutes' 217 681
sql_spells 'Druid' 'Flaming Sphere' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 218 681
sql_spells 'Druid' 'Gust of Wind' 2 '1 action' 'Self (60-foot line)' 'Concentration, up to 1 minute' 219 681
sql_spells 'Druid' 'Heat Metal' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 220 681
sql_spells 'Druid' 'Hold Person' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 221 681
sql_spells 'Druid' 'Locate Animals or Plants' 2 '1 action' 'Self' 'Instantaneous' 222 681
sql_spells 'Druid' 'Locate Object' 2 '1 action' 'Self' 'Concentration, up to 10 minutes' 223 681
sql_spells 'Druid' 'Moonbeam' 2 '1 action' '120 feet' 'Concentration, up to 1 minute' 224 681
sql_spells 'Druid' 'Spike Growth' 2 '1 action' '150 feet' 'Concentration, up to 10 minutes' 225 681
sql_spells 'Druid' 'Call Lightning' 3 '1 action' '120 feet' 'Concentration, up to 10 minutes' 226 681
sql_spells 'Druid' 'Conjure Animals' 3 '1 action' '60 feet' 'Concentration, up to 1 hour' 227 681
sql_spells 'Druid' 'Daylight' 3 '1 action' '60 feet' '1 hour' 228 681
sql_spells 'Druid' 'Dispel Magic' 3 '1 action' '120 feet' 'Instantaneous' 229 681
sql_spells 'Druid' 'Meld into Stone' 3 '1 action' 'Touch' '8 hours' 230 681
sql_spells 'Druid' 'Plant Growth' 3 '1 action or 8 hours' '150 feet' 'Instantaneous' 231 681
sql_spells 'Druid' 'Protection from Energy' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 232 681
sql_spells 'Druid' 'Sleet Storm' 3 '1 action' '150 feet' 'Concentration, up to 1 minute' 233 681
sql_spells 'Druid' 'Speak with Plants' 3 '1 action' 'Self (30-foot radius)' '10 minutes' 234 681
sql_spells 'Druid' 'Water Breathing' 3 '1 action' '30 feet' '24 hours' 235 681
sql_spells 'Druid' 'Water Walk' 3 '1 action' '30 feet' '1 hour' 236 681
sql_spells 'Druid' 'Blight' 4 '1 action' '30 feet' 'Instantaneous' 237 681
sql_spells 'Druid' 'Confusion' 4 '1 action' '90 feet' 'Concentration, up to 1 minute' 238 681
sql_spells 'Druid' 'Conjure Woodland Beings' 4 '1 action' '60 feet' 'Concentration, up to 1 hour' 239 681
sql_spells 'Druid' 'Control Water' 4 '1 action' '300 feet' 'Concentration, up to 10 minutes' 240 681
sql_spells 'Druid' 'Freedom of Movement' 4 '1 action' 'Touch' '1 hour' 241 681
sql_spells 'Druid' 'Giant Insect' 4 '1 action' '30 feet' 'Concentration, up to 10 minutes' 242 681
sql_spells 'Druid' 'Ice Storm' 4 '1 action' '300 feet' 'Instantaneous' 243 681
sql_spells 'Druid' 'Locate Creature' 4 '1 action' 'Self' 'Concentration, up to 1 hour' 244 681
sql_spells 'Druid' 'Stone Shape' 4 '1 action' 'Touch' 'Instantaneous' 245 681
sql_spells 'Druid' 'Stoneskin' 4 '1 action' 'Touch' 'Concentration, up to 1 hour' 246 681
sql_spells 'Druid' 'Wall of Fire' 4 '1 action' '120 feet' 'Concentration, up to 1 minute' 247 681
sql_spells 'Druid' 'Awaken' 5 '8 hours' 'Touch' 'Instantaneous' 248 681
sql_spells 'Druid' 'Commune with Nature' 5 '1 minute' 'Self' 'Instantaneous' 249 681
sql_spells 'Druid' 'Conjure Elemental' 5 '1 minute' '90 feet' 'Concentration, up to 1 hour' 250 681
sql_spells 'Druid' 'Contagion' 5 '1 action' 'Touch' '7 days' 251 681
sql_spells 'Druid' 'Geas' 5 '1 minute' '60 feet' '30 days' 252 681
sql_spells 'Druid' 'Greater Restoration' 5 '1 action' 'Touch' 'Instantaneous' 253 681
sql_spells 'Druid' 'Mass Cure Wounds' 5 '1 action' '60 feet' 'Instantaneous' 254 681
sql_spells 'Druid' 'Planar Binding' 5 '1 hour' '60 feet' '24 hours' 255 681
sql_spells 'Druid' 'Reincarnate' 5 '1 hour' 'Touch' 'Instantaneous' 256 681
sql_spells 'Druid' 'Tree Stride' 5 '1 action' 'Self' 'Concentration, up to 1 minute' 257 681
sql_spells 'Druid' 'Wall of Stone' 5 '1 action' '120 feet' 'Concentration, up to 10 minutes' 258 681
sql_spells 'Druid' 'Conjure Fey' 6 '1 minute' '90 feet' 'Concentration, up to 1 hour' 259 681
sql_spells 'Druid' 'Find the Path' 6 '1 minute' 'Self' 'Concentration, up to 1 day' 260 681
sql_spells 'Druid' 'Heal' 6 '1 action' '60 feet' 'Instantaneous' 261 681
sql_spells 'Druid' 'Move Earth' 6 '1 action' '120 feet' 'Concentration, up to 2 hours' 262 681
sql_spells 'Druid' 'Sunbeam' 6 '1 action' 'Self (60-foot line)' 'Concentration, up to 1 minute' 263 681
sql_spells 'Druid' 'Transport via Plants' 6 '1 action' '10 feet' '1 round' 264 681
sql_spells 'Druid' 'Wall of Thorns' 6 '1 action' '120 feet' 'Concentration, up to 10 minutes' 265 681
sql_spells 'Druid' 'Wind Walk' 6 '1 minute' '30 feet' '8 hours' 266 681
sql_spells 'Druid' 'Mirage Arcane' 7 '10 minutes' 'Sight' '10 days' 267 681
sql_spells 'Druid' 'Plane Shift' 7 '1 action' 'Touch' 'Instantaneous' 268 681
sql_spells 'Druid' 'Regenerate' 7 '1 minute' 'Touch' '1 hour' 269 681
sql_spells 'Druid' 'Reverse Gravity' 7 '1 action' '100 feet' 'Concentration, up to 1 minute' 270 681
sql_spells 'Druid' 'Animal Shapes' 8 '1 action' '30 feet' 'Concentration, up to 24 hours' 271 681
sql_spells 'Druid' 'Antipathy/Sympathy' 8 '1 hour' '60 feet' '10 days' 272 681
sql_spells 'Druid' 'Control Weather' 8 '10 minutes' 'Self (5-mile radius)' 'Concentration, up to 8 hours' 273 681
sql_spells 'Druid' 'Feeblemind' 8 '1 action' '150 feet' 'Instantaneous' 274 681
sql_spells 'Druid' 'Sunburst' 8 '1 action' '150 feet' 'Instantaneous' 275 681
sql_spells 'Druid' 'Foresight' 9 '1 minute' 'Touch' '8 hours' 276 681
sql_spells 'Druid' 'Shapechange' 9 '1 action' 'Self' 'Concentration, up to 1 hour' 277 681
sql_spells 'Druid' 'True Resurrection' 9 '1 hour' 'Touch' 'Instantaneous' 278 681
sql_spells 'Paladin' 'Bless' 1 '1 action' '30 feet' 'Concentration, up to 1 minute' 279 681
sql_spells 'Paladin' 'Command' 1 '1 action' '60 feet' '1 round' 280 681
sql_spells 'Paladin' 'Cure Wounds' 1 '1 action' 'Touch' 'Instantaneous' 281 681
sql_spells 'Paladin' 'Detect Evil and Good' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 282 681
sql_spells 'Paladin' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 283 681
sql_spells 'Paladin' 'Divine Favor' 1 '1 bonus action' 'Self' 'Concentration, up to 1 minute' 284 681
sql_spells 'Paladin' 'Heroism' 1 '1 action' 'Touch' 'Concentration, up to 1 minute' 285 681
sql_spells 'Paladin' 'Protection from Evil and Good' 1 '1 action' 'Touch' 'Concentration up to 10 minutes' 286 681
sql_spells 'Paladin' 'Purify Food and Drink' 1 '1 action' '10 feet' 'Instantaneous' 287 681
sql_spells 'Paladin' 'Shield of Faith' 1 '1 bonus action' '60 feet' 'Concentration, up to 10 minutes' 288 681
sql_spells 'Paladin' 'Aid' 2 '1 action' '30 feet' '8 hours' 289 681
sql_spells 'Paladin' 'Branding Smite' 2 '1 bonus action' 'Self' 'Concentration, up to 1 minute' 290 681
sql_spells 'Paladin' 'Find Steed' 2 '10 minutes' '30 feet' 'Instantaneous' 291 681
sql_spells 'Paladin' 'Lesser Restoration' 2 '1 action' 'Touch' 'Instantaneous' 292 681
sql_spells 'Paladin' 'Locate Object' 2 '1 action' 'Self' 'Concentration, up to 10 minutes' 293 681
sql_spells 'Paladin' 'Magic Weapon' 2 '1 bonus action' 'Touch' 'Concentration, up to 1 hour' 294 681
sql_spells 'Paladin' 'Zone of Truth' 2 '1 action' '60 feet' '10 minutes' 295 681
sql_spells 'Paladin' 'Create Food and Water' 3 '1 action' '30 feet' 'Instantaneous' 296 681
sql_spells 'Paladin' 'Daylight' 3 '1 action' '60 feet' '1 hour' 297 681
sql_spells 'Paladin' 'Dispel Magic' 3 '1 action' '120 feet' 'Instantaneous' 298 681
sql_spells 'Paladin' 'Magic Circle' 3 '1 minute' '10 feet' '1 hour' 299 681
sql_spells 'Paladin' 'Remove Curse' 3 '1 action' 'Touch' 'Instantaneous' 300 681
sql_spells 'Paladin' 'Banishment' 4 '1 action' '60 feet' 'Concentration, up to 1 minute' 301 681
sql_spells 'Paladin' 'Death Ward' 4 '1 action' 'Touch' '8 hours' 302 681
sql_spells 'Paladin' 'Dispel Evil and Good' 5 '1 action' 'Self' 'Concentration, up to 1 minute' 303 681
sql_spells 'Paladin' 'Geas' 5 '1 minute' '60 feet' '30 days' 304 681
sql_spells 'Paladin' 'Raise Dead' 5 '1 hour' 'Touch' 'Instantaneous' 305 681
sql_spells 'Ranger' 'Alarm' 1 '1 minute' '30 feet' '8 hours' 306 681
sql_spells 'Ranger' 'Animal Friendship' 1 '1 action' '30 feet' '24 hours' 307 681
sql_spells 'Ranger' 'Cure Wounds' 1 '1 action' 'Touch' 'Instantaneous' 308 681
sql_spells 'Ranger' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 309 681
sql_spells 'Ranger' 'Fog Cloud' 1 '1 action' '120 feet' 'Concentration, up to 1 hour' 310 681
sql_spells 'Ranger' 'Goodberry' 1 '1 action' 'Touch' 'Instantaneous' 311 681
sql_spells 'Ranger' 'Jump' 1 '1 action' 'Touch' '1 minute' 312 681
sql_spells 'Ranger' 'Longstrider' 1 '1 action' 'Touch' '1 hour' 313 681
sql_spells 'Ranger' 'Speak with Animals' 1 '1 action' 'Self' '10 minutes' 314 681
sql_spells 'Ranger' 'Barkskin' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 315 681
sql_spells 'Ranger' 'Darkvision' 2 '1 action' 'Touch' '8 hours' 316 681
sql_spells 'Ranger' 'Find Traps' 2 '1 action' '120 feet' 'Instantaneous' 317 681
sql_spells 'Ranger' 'Lesser Restoration' 2 '1 action' 'Touch' 'Instantaneous' 318 681
sql_spells 'Ranger' 'Locate Animals or Plants' 2 '1 action' 'Self' 'Instantaneous' 319 681
sql_spells 'Ranger' 'Locate Object' 2 '1 action' 'Self' 'Concentration, up to 10 minutes' 320 681
sql_spells 'Ranger' 'Pass without Trace' 2 '1 action' 'Self' 'Concentration, up to 1 hour' 321 681
sql_spells 'Ranger' 'Protection from Poison' 2 '1 action' 'Touch' '1 hour' 322 681
sql_spells 'Ranger' 'Silence' 2 '1 action' '120 feet' 'Concentration, up to 10 minutes' 323 681
sql_spells 'Ranger' 'Spike Growth' 2 '1 action' '150 feet' 'Concentration, up to 10 minutes' 324 681
sql_spells 'Ranger' 'Conjure Animals' 3 '1 action' '60 feet' 'Concentration, up to 1 hour' 325 681
sql_spells 'Ranger' 'Daylight' 3 '1 action' '60 feet' '1 hour' 326 681
sql_spells 'Ranger' 'Nondetection' 3 '1 action' 'Touch' '8 hours' 327 681
sql_spells 'Ranger' 'Plant Growth' 3 '1 action or 8 hours' '150 feet' 'Instantaneous' 328 681
sql_spells 'Ranger' 'Protection from Energy' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 329 681
sql_spells 'Ranger' 'Speak with Plants' 3 '1 action' 'Self (30-foot radius)' '10 minutes' 330 681
sql_spells 'Ranger' 'Water Breathing' 3 '1 action' '30 feet' '24 hours' 331 681
sql_spells 'Ranger' 'Water Walk' 3 '1 action' '30 feet' '1 hour' 332 681
sql_spells 'Ranger' 'Wind Wall' 3 '1 action' '120 feet' 'Concentration, up to 1 minute' 333 681
sql_spells 'Ranger' 'Conjure Woodland Beings' 4 '1 action' '60 feet' 'Concentration, up to 1 hour' 334 681
sql_spells 'Ranger' 'Freedom of Movement' 4 '1 action' 'Touch' '1 hour' 335 681
sql_spells 'Ranger' 'Locate Creature' 4 '1 action' 'Self' 'Concentration, up to 1 hour' 336 681
sql_spells 'Ranger' 'Stoneskin' 4 '1 action' 'Touch' 'Concentration, up to 1 hour' 337 681
sql_spells 'Ranger' 'Commune with Nature' 5 '1 minute' 'Self' 'Instantaneous' 338 681
sql_spells 'Ranger' 'Tree Stride' 5 '1 action' 'Self' 'Concentration, up to 1 minute' 339 681
sql_spells 'Sorcerer' 'Acid Splash' 0 '1 action' '60 feet' 'Instantaneous' 340 681
sql_spells 'Sorcerer' 'Chill Touch' 0 '1 action' '120 feet' '1 round' 341 681
sql_spells 'Sorcerer' 'Dancing Lights' 0 '1 action' '120 feet' 'Concentration, up to 1 minute' 342 681
sql_spells 'Sorcerer' 'Fire Bolt' 0 '1 action' '120 feet' 'Instantaneous' 343 681
sql_spells 'Sorcerer' 'Light' 0 '1 action' 'Touch' '1 hour' 344 681
sql_spells 'Sorcerer' 'Mage Hand' 0 '1 action' '30 feet' '1 minute' 345 681
sql_spells 'Sorcerer' 'Mending' 0 '1 minute' 'Touch' 'Instantaneous' 346 681
sql_spells 'Sorcerer' 'Message' 0 '1 action' '120 feet' '1 round' 347 681
sql_spells 'Sorcerer' 'Minor Illusion' 0 '1 action' '30 feet' '1 minute' 348 681
sql_spells 'Sorcerer' 'Prestidigitation' 0 '1 action' '10 feet' 'Up to 1 hour' 349 681
sql_spells 'Sorcerer' 'Ray of Frost' 0 '1 action' '60 feet' 'Instantaneous' 350 681
sql_spells 'Sorcerer' 'Shocking Grasp' 0 '1 action' 'Touch' 'Instantaneous' 351 681
sql_spells 'Sorcerer' 'True Strike' 0 '1 action' '30 feet' 'Concentration, up to 1 round' 352 681
sql_spells 'Sorcerer' 'Burning Hands' 1 '1 action' 'Self (15-foot cone)' 'Instantaneous' 353 681
sql_spells 'Sorcerer' 'Charm Person' 1 '1 action' '30 feet' '1 hour' 354 681
sql_spells 'Sorcerer' 'Color Spray' 1 '1 action' 'Self (15-foot cone)' '1 round' 355 681
sql_spells 'Sorcerer' 'Comprehend Languages' 1 '1 action' 'Self' '1 hour' 356 681
sql_spells 'Sorcerer' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 357 681
sql_spells 'Sorcerer' 'Disguise Self' 1 '1 action' 'Self' '1 hour' 358 681
sql_spells 'Sorcerer' 'Expeditious Retreat' 1 '1 bonus action' 'Self' 'Concentration, up to 10 minutes' 359 681
sql_spells 'Sorcerer' 'False Life' 1 '1 action' 'Self' '1 hour' 360 681
sql_spells 'Sorcerer' 'Feather Fall' 1 '1 reaction, which you take when you or a creature within 60 feet of you falls' '60 feet' '1 minute' 361 681
sql_spells 'Sorcerer' 'Fog Cloud' 1 '1 action' '120 feet' 'Concentration, up to 1 hour' 362 681
sql_spells 'Sorcerer' 'Jump' 1 '1 action' 'Touch' '1 minute' 363 681
sql_spells 'Sorcerer' 'Mage Armor' 1 '1 action' 'Touch' '8 hours' 364 681
sql_spells 'Sorcerer' 'Shield' 1 '1 reaction, which you take when you are hit by an attack or targeted by the magic missile spell' 'Self' '1 round' 365 681
sql_spells 'Sorcerer' 'Silent Image' 1 '1 action' '60 feet' 'Concentration, up to 10 minutes' 366 681
sql_spells 'Sorcerer' 'Sleep' 1 '1 action' '90 feet' '1 minute' 367 681
sql_spells 'Sorcerer' 'Thunderwave' 1 '1 action' 'Self (15-foot cube)' 'Instantaneous' 368 681
sql_spells 'Sorcerer' 'Alter Self' 2 '1 action' 'Self' 'Concentration, up to 1 hour' 369 681
sql_spells 'Sorcerer' 'Blindness/Deafness' 2 '1 action' '30 feet' '1 minute' 370 681
sql_spells 'Sorcerer' 'Blur' 2 '1 action' 'Self' 'Concentration, up to 1 minute' 371 681
sql_spells 'Sorcerer' 'Darkness' 2 '1 action' '60 feet' 'Concentration, up to 10 minutes' 372 681
sql_spells 'Sorcerer' 'Darkvision' 2 '1 action' 'Touch' '8 hours' 373 681
sql_spells 'Sorcerer' 'Detect Thoughts' 2 '1 action' 'Self' 'Concentration, up to 1 minute' 374 681
sql_spells 'Sorcerer' 'Enhance Ability' 2 '1 action' 'Touch' 'Concentration, up to 1 hour. ' 375 681
sql_spells 'Sorcerer' 'Enlarge/Reduce' 2 '1 action' '30 feet' 'Concentration, up to 1 minute' 376 681
sql_spells 'Sorcerer' 'Gust of Wind' 2 '1 action' 'Self (60-foot line)' 'Concentration, up to 1 minute' 377 681
sql_spells 'Sorcerer' 'Hold Person' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 378 681
sql_spells 'Sorcerer' 'Invisibility' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 379 681
sql_spells 'Sorcerer' 'Knock' 2 '1 action' '60 feet' 'Instantaneous' 380 681
sql_spells 'Sorcerer' 'Levitate' 2 '1 action' '60 feet' 'Concentration, up to 10 minutes' 381 681
sql_spells 'Sorcerer' 'Mirror Image' 2 '1 action' 'Self' '1 minute' 382 681
sql_spells 'Sorcerer' 'Misty Step' 2 '1 bonus action' 'Self' 'Instantaneous' 383 681
sql_spells 'Sorcerer' 'Scorching Ray' 2 '1 action' '120 feet' 'Instantaneous' 384 681
sql_spells 'Sorcerer' 'Shatter' 2 '1 action' '60 feet' 'Instantaneous' 385 681
sql_spells 'Sorcerer' 'Spider Climb' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 386 681
sql_spells 'Sorcerer' 'Suggestion' 2 '1 action' '30 feet' 'Concentration, up to 8 hours' 387 681
sql_spells 'Sorcerer' 'Web' 2 '1 action' '60 feet' 'Concentration, up to 1 hour' 388 681
sql_spells 'Sorcerer' 'Blink' 3 '1 action' 'Self' '1 minute' 389 681
sql_spells 'Sorcerer' 'Clairvoyance' 3 '10 minutes' '1 mile' 'Concentration, up to 10 minutes' 390 681
sql_spells 'Sorcerer' 'Counterspell' 3 '1 reaction, which you take when you see a creature within 60 feet of you casting a spell' '60 feet' 'Instantaneous' 391 681
sql_spells 'Sorcerer' 'Daylight' 3 '1 action' '60 feet' '1 hour' 392 681
sql_spells 'Sorcerer' 'Dispel Magic' 3 '1 action' '120 feet' 'Instantaneous' 393 681
sql_spells 'Sorcerer' 'Fear' 3 '1 action' 'Self (30-foot cone)' 'Concentration, up to 1 minute' 394 681
sql_spells 'Sorcerer' 'Fireball' 3 '1 action' '150 feet' 'Instantaneous' 395 681
sql_spells 'Sorcerer' 'Fly' 3 '1 action' 'Touch' 'Concentration, up to 10 minutes' 396 681
sql_spells 'Sorcerer' 'Gaseous Form' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 397 681
sql_spells 'Sorcerer' 'Haste' 3 '1 action' '30 feet' 'Concentration, up to 1 minute' 398 681
sql_spells 'Sorcerer' 'Hypnotic Pattern' 3 '1 action' '120 feet' 'Concentration, up to 1 minute' 399 681
sql_spells 'Sorcerer' 'Lightning Bolt' 3 '1 action' 'Self (100-foot line)' 'Instantaneous' 400 681
sql_spells 'Sorcerer' 'Major Image' 3 '1 action' '120 feet' 'Concentration, up to 10 minutes' 401 681
sql_spells 'Sorcerer' 'Protection from Energy' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 402 681
sql_spells 'Sorcerer' 'Sleet Storm' 3 '1 action' '150 feet' 'Concentration, up to 1 minute' 403 681
sql_spells 'Sorcerer' 'Stinking Cloud' 3 '1 action' '90 feet' 'Concentration, up to 1 minute' 404 681
sql_spells 'Sorcerer' 'Tongues' 3 '1 action' 'Touch' '1 hour' 405 681
sql_spells 'Sorcerer' 'Water Breathing' 3 '1 action' '30 feet' '24 hours' 406 681
sql_spells 'Sorcerer' 'Water Walk' 3 '1 action' '30 feet' '1 hour' 407 681
sql_spells 'Sorcerer' 'Banishment' 4 '1 action' '60 feet' 'Concentration, up to 1 minute' 408 681
sql_spells 'Sorcerer' 'Blight' 4 '1 action' '30 feet' 'Instantaneous' 409 681
sql_spells 'Sorcerer' 'Confusion' 4 '1 action' '90 feet' 'Concentration, up to 1 minute' 410 681
sql_spells 'Sorcerer' 'Dimension Door' 4 '1 action' '500 feet' 'Instantaneous' 411 681
sql_spells 'Sorcerer' 'Greater Invisibility' 4 '1 action' 'Touch' 'Concentration, up to 1 minute' 412 681
sql_spells 'Sorcerer' 'Ice Storm' 4 '1 action' '300 feet' 'Instantaneous' 413 681
sql_spells 'Sorcerer' 'Stoneskin' 4 '1 action' 'Touch' 'Concentration, up to 1 hour' 414 681
sql_spells 'Sorcerer' 'Wall of Fire' 4 '1 action' '120 feet' 'Concentration, up to 1 minute' 415 681
sql_spells 'Sorcerer' 'Animate Objects' 5 '1 action' '120 feet' 'Concentration, up to 1 minute' 416 681
sql_spells 'Sorcerer' 'Cloudkill' 5 '1 action' '120 feet' 'Concentration, up to 10 minutes' 417 681
sql_spells 'Sorcerer' 'Cone of Cold' 5 '1 action' 'Self (60-foot cone)' 'Instantaneous' 418 681
sql_spells 'Sorcerer' 'Creation' 5 '1 minute' '30 feet' 'Special' 419 681
sql_spells 'Sorcerer' 'Dominate Person' 5 '1 action' '60 feet' 'Concentration, up to 1 minute' 420 681
sql_spells 'Sorcerer' 'Hold Monster' 5 '1 action' '90 feet' 'Concentration, up to 1 minute' 421 681
sql_spells 'Sorcerer' 'Seeming' 5 '1 action' '30 feet' '8 hours' 422 681
sql_spells 'Sorcerer' 'Telekinesis' 5 '1 action' '60 feet' 'Concentration, up to 10 minutes' 423 681
sql_spells 'Sorcerer' 'Teleportation Circle' 5 '1 minute' '10 feet' '1 round' 424 681
sql_spells 'Sorcerer' 'Wall of Stone' 5 '1 action' '120 feet' 'Concentration, up to 10 minutes' 425 681
sql_spells 'Sorcerer' 'Circle of Death' 6 '1 action' '150 feet' 'Instantaneous' 426 681
sql_spells 'Sorcerer' 'Disintegrate' 6 '1 action' '60 feet' 'Instantaneous' 427 681
sql_spells 'Sorcerer' 'Eyebite' 6 '1 action' 'Self' 'Concentration, up to 1 minute' 428 681
sql_spells 'Sorcerer' 'Globe of Invulnerability' 6 '1 action' 'Self (10-foot radius)' 'Concentration, up to 1 minute' 429 681
sql_spells 'Sorcerer' 'Mass Suggestion' 6 '1 action' '60 feet' '24 hours' 430 681
sql_spells 'Sorcerer' 'Move Earth' 6 '1 action' '120 feet' 'Concentration, up to 2 hours' 431 681
sql_spells 'Sorcerer' 'Sunbeam' 6 '1 action' 'Self (60-foot line)' 'Concentration, up to 1 minute' 432 681
sql_spells 'Sorcerer' 'True Seeing' 6 '1 action' 'Touch' '1 hour' 433 681
sql_spells 'Sorcerer' 'Delayed Blast Fireball' 7 '1 action' '150 feet' 'Concentration, up to 1 minute' 434 681
sql_spells 'Sorcerer' 'Etherealness' 7 '1 action' 'Self' 'Up to 8 hours' 435 681
sql_spells 'Sorcerer' 'Finger of Death' 7 '1 action' '60 feet' 'Instantaneous' 436 681
sql_spells 'Sorcerer' 'Fire Storm' 7 '1 action' '150 feet' 'Instantaneous' 437 681
sql_spells 'Sorcerer' 'Plane Shift' 7 '1 action' 'Touch' 'Instantaneous' 438 681
sql_spells 'Sorcerer' 'Prismatic Spray' 7 '1 action' 'Self (60-foot cone)' 'Instantaneous' 439 681
sql_spells 'Sorcerer' 'Reverse Gravity' 7 '1 action' '100 feet' 'Concentration, up to 1 minute' 440 681
sql_spells 'Sorcerer' 'Teleport' 7 '1 action' '10 feet' 'Instantaneous' 441 681
sql_spells 'Sorcerer' 'Dominate Monster' 8 '1 action' '60 feet' 'Concentration, up to 1 hour' 442 681
sql_spells 'Sorcerer' 'Earthquake' 8 '1 action' '500 feet' 'Concentration, up to 1 minute' 443 681
sql_spells 'Sorcerer' 'Incendiary Cloud' 8 '1 action' '150 feet' 'Concentration, up to 1 minute' 444 681
sql_spells 'Sorcerer' 'Power Word Stun' 8 '1 action' '60 feet' 'Instantaneous' 445 681
sql_spells 'Sorcerer' 'Sunburst' 8 '1 action' '150 feet' 'Instantaneous' 446 681
sql_spells 'Sorcerer' 'Gate' 9 '1 action' '60 feet' 'Concentration, up to 1 minute' 447 681
sql_spells 'Sorcerer' 'Meteor Swarm' 9 '1 action' '1 mile' 'Instantaneous' 448 681
sql_spells 'Sorcerer' 'Power Word Kill' 9 '1 action' '60 feet' 'Instantaneous' 449 681
sql_spells 'Sorcerer' 'Time Stop' 9 '1 action' 'Self' 'Instantaneous' 450 681
sql_spells 'Sorcerer' 'Wish' 9 '1 action' 'Self' 'Instantaneous' 451 681
sql_spells 'Warlock' 'Chill Touch' 0 '1 action' '120 feet' '1 round' 452 681
sql_spells 'Warlock' 'Eldritch Blast' 0 '1 action' '120 feet' 'Instantaneous' 453 681
sql_spells 'Warlock' 'Mage Hand' 0 '1 action' '30 feet' '1 minute' 454 681
sql_spells 'Warlock' 'Minor Illusion' 0 '1 action' '30 feet' '1 minute' 455 681
sql_spells 'Warlock' 'Poison Spray' 0 '1 action' '10 feet' 'Instantaneous' 456 681
sql_spells 'Warlock' 'Prestidigitation' 0 '1 action' '10 feet' 'Up to 1 hour' 457 681
sql_spells 'Warlock' 'True Strike' 0 '1 action' '30 feet' 'Concentration, up to 1 round' 458 681
sql_spells 'Warlock' 'Charm Person' 1 '1 action' '30 feet' '1 hour' 459 681
sql_spells 'Warlock' 'Comprehend Languages' 1 '1 action' 'Self' '1 hour' 460 681
sql_spells 'Warlock' 'Expeditious Retreat' 1 '1 bonus action' 'Self' 'Concentration, up to 10 minutes' 461 681
sql_spells 'Warlock' 'Hellish Rebuke' 1 '1 reaction, which you take in response to being damaged by a creature within 60 feet of you that you can see' '60 feet' 'Instantaneous' 462 681
sql_spells 'Warlock' 'Illusory Script' 1 '1 minute' 'Touch' '10 days' 463 681
sql_spells 'Warlock' 'Protection from Evil and Good' 1 '1 action' 'Touch' 'Concentration up to 10 minutes' 464 681
sql_spells 'Warlock' 'Darkness' 2 '1 action' '60 feet' 'Concentration, up to 10 minutes' 465 681
sql_spells 'Warlock' 'Enthrall' 2 '1 action' '60 feet' '1 minute' 466 681
sql_spells 'Warlock' 'Hold Person' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 467 681
sql_spells 'Warlock' 'Mirror Image' 2 '1 action' 'Self' '1 minute' 468 681
sql_spells 'Warlock' 'Misty Step' 2 '1 bonus action' 'Self' 'Instantaneous' 469 681
sql_spells 'Warlock' 'Ray of Enfeeblement' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 470 681
sql_spells 'Warlock' 'Shatter' 2 '1 action' '60 feet' 'Instantaneous' 471 681
sql_spells 'Warlock' 'Spider Climb' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 472 681
sql_spells 'Warlock' 'Suggestion' 2 '1 action' '30 feet' 'Concentration, up to 8 hours' 473 681
sql_spells 'Warlock' 'Counterspell' 3 '1 reaction, which you take when you see a creature within 60 feet of you casting a spell' '60 feet' 'Instantaneous' 474 681
sql_spells 'Warlock' 'Fear' 3 '1 action' 'Self (30-foot cone)' 'Concentration, up to 1 minute' 475 681
sql_spells 'Warlock' 'Fly' 3 '1 action' 'Touch' 'Concentration, up to 10 minutes' 476 681
sql_spells 'Warlock' 'Gaseous Form' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 477 681
sql_spells 'Warlock' 'Hypnotic Pattern' 3 '1 action' '120 feet' 'Concentration, up to 1 minute' 478 681
sql_spells 'Warlock' 'Magic Circle' 3 '1 minute' '10 feet' '1 hour' 479 681
sql_spells 'Warlock' 'Major Image' 3 '1 action' '120 feet' 'Concentration, up to 10 minutes' 480 681
sql_spells 'Warlock' 'Remove Curse' 3 '1 action' 'Touch' 'Instantaneous' 481 681
sql_spells 'Warlock' 'Vampiric Touch' 3 '1 action' 'Self' 'Concentration, up to 1 minute' 482 681
sql_spells 'Warlock' 'Banishment' 4 '1 action' '60 feet' 'Concentration, up to 1 minute' 483 681
sql_spells 'Warlock' 'Blight' 4 '1 action' '30 feet' 'Instantaneous' 484 681
sql_spells 'Warlock' 'Dimension Door' 4 '1 action' '500 feet' 'Instantaneous' 485 681
sql_spells 'Warlock' 'Contact Other Plane' 5 '1 minute' 'Self' '1 minute' 486 681
sql_spells 'Warlock' 'Dream' 5 '1 minute' 'Special' '8 hours' 487 681
sql_spells 'Warlock' 'Hold Monster' 5 '1 action' '90 feet' 'Concentration, up to 1 minute' 488 681
sql_spells 'Warlock' 'Scrying' 5 '10 minutes' 'Self' 'Concentration, up to 10 minutes' 489 681
sql_spells 'Warlock' 'Circle of Death' 6 '1 action' '150 feet' 'Instantaneous' 490 681
sql_spells 'Warlock' 'Conjure Fey' 6 '1 minute' '90 feet' 'Concentration, up to 1 hour' 491 681
sql_spells 'Warlock' 'Create Undead' 6 '1 minute' '10 feet' 'Instantaneous' 492 681
sql_spells 'Warlock' 'Eyebite' 6 '1 action' 'Self' 'Concentration, up to 1 minute' 493 681
sql_spells 'Warlock' 'Flesh to Stone' 6 '1 action' '60 feet' 'Concentration, up to 1 minute' 494 681
sql_spells 'Warlock' 'Mass Suggestion' 6 '1 action' '60 feet' '24 hours' 495 681
sql_spells 'Warlock' 'True Seeing' 6 '1 action' 'Touch' '1 hour' 496 681
sql_spells 'Warlock' 'Etherealness' 7 '1 action' 'Self' 'Up to 8 hours' 497 681
sql_spells 'Warlock' 'Finger of Death' 7 '1 action' '60 feet' 'Instantaneous' 498 681
sql_spells 'Warlock' 'Plane Shift' 7 '1 action' 'Touch' 'Instantaneous' 499 681
sql_spells 'Warlock' 'Demiplane' 8 '1 action' '60 feet' '1 hour' 500 681
sql_spells 'Warlock' 'Dominate Monster' 8 '1 action' '60 feet' 'Concentration, up to 1 hour' 501 681
sql_spells 'Warlock' 'Feeblemind' 8 '1 action' '150 feet' 'Instantaneous' 502 681
sql_spells 'Warlock' 'Glibness' 8 '1 action' 'Self' '1 hour' 503 681
sql_spells 'Warlock' 'Power Word Stun' 8 '1 action' '60 feet' 'Instantaneous' 504 681
sql_spells 'Warlock' 'Astral Projection' 9 '1 hour' '10 feet' 'Special' 505 681
sql_spells 'Warlock' 'Foresight' 9 '1 minute' 'Touch' '8 hours' 506 681
sql_spells 'Warlock' 'Imprisonment' 9 '1 minute' '30 feet' 'Until dispelled' 507 681
sql_spells 'Warlock' 'Power Word Kill' 9 '1 action' '60 feet' 'Instantaneous' 508 681
sql_spells 'Warlock' 'True Polymorph' 9 '1 action' '30 feet' 'Concentration, up to 1 hour' 509 681
sql_spells 'Wizard' 'Acid Splash' 0 '1 action' '60 feet' 'Instantaneous' 510 681
sql_spells 'Wizard' 'Chill Touch' 0 '1 action' '120 feet' '1 round' 511 681
sql_spells 'Wizard' 'Dancing Lights' 0 '1 action' '120 feet' 'Concentration, up to 1 minute' 512 681
sql_spells 'Wizard' 'Fire Bolt' 0 '1 action' '120 feet' 'Instantaneous' 513 681
sql_spells 'Wizard' 'Light' 0 '1 action' 'Touch' '1 hour' 514 681
sql_spells 'Wizard' 'Mage Hand' 0 '1 action' '30 feet' '1 minute' 515 681
sql_spells 'Wizard' 'Mending' 0 '1 minute' 'Touch' 'Instantaneous' 516 681
sql_spells 'Wizard' 'Message' 0 '1 action' '120 feet' '1 round' 517 681
sql_spells 'Wizard' 'Minor Illusion' 0 '1 action' '30 feet' '1 minute' 518 681
sql_spells 'Wizard' 'Prestidigitation' 0 '1 action' '10 feet' 'Up to 1 hour' 519 681
sql_spells 'Wizard' 'Ray of Frost' 0 '1 action' '60 feet' 'Instantaneous' 520 681
sql_spells 'Wizard' 'Shocking Grasp' 0 '1 action' 'Touch' 'Instantaneous' 521 681
sql_spells 'Wizard' 'True Strike' 0 '1 action' '30 feet' 'Concentration, up to 1 round' 522 681
sql_spells 'Wizard' 'Alarm' 1 '1 minute' '30 feet' '8 hours' 523 681
sql_spells 'Wizard' 'Burning Hands' 1 '1 action' 'Self (15-foot cone)' 'Instantaneous' 524 681
sql_spells 'Wizard' 'Charm Person' 1 '1 action' '30 feet' '1 hour' 525 681
sql_spells 'Wizard' 'Color Spray' 1 '1 action' 'Self (15-foot cone)' '1 round' 526 681
sql_spells 'Wizard' 'Comprehend Languages' 1 '1 action' 'Self' '1 hour' 527 681
sql_spells 'Wizard' 'Detect Magic' 1 '1 action' 'Self' 'Concentration, up to 10 minutes' 528 681
sql_spells 'Wizard' 'Disguise Self' 1 '1 action' 'Self' '1 hour' 529 681
sql_spells 'Wizard' 'Expeditious Retreat' 1 '1 bonus action' 'Self' 'Concentration, up to 10 minutes' 530 681
sql_spells 'Wizard' 'False Life' 1 '1 action' 'Self' '1 hour' 531 681
sql_spells 'Wizard' 'Feather Fall' 1 '1 reaction, which you take when you or a creature within 60 feet of you falls' '60 feet' '1 minute' 532 681
sql_spells 'Wizard' 'Find Familiar' 1 '1 hour' '10 feet' 'Instantaneous' 533 681
sql_spells 'Wizard' 'Fog Cloud' 1 '1 action' '120 feet' 'Concentration, up to 1 hour' 534 681
sql_spells 'Wizard' 'Grease' 1 '1 action' '60 feet' '1 minute' 535 681
sql_spells 'Wizard' 'Identify' 1 '1 minute' 'Touch' 'Instantaneous' 536 681
sql_spells 'Wizard' 'Illusory Script' 1 '1 minute' 'Touch' '10 days' 537 681
sql_spells 'Wizard' 'Jump' 1 '1 action' 'Touch' '1 minute' 538 681
sql_spells 'Wizard' 'Longstrider' 1 '1 action' 'Touch' '1 hour' 539 681
sql_spells 'Wizard' 'Mage Armor' 1 '1 action' 'Touch' '8 hours' 540 681
sql_spells 'Wizard' 'Magic Missile' 1 '1 action' '120 feet' 'Instantaneous' 541 681
sql_spells 'Wizard' 'Protection from Evil and Good' 1 '1 action' 'Touch' 'Concentration up to 10 minutes' 542 681
sql_spells 'Wizard' 'Shield' 1 '1 reaction, which you take when you are hit by an attack or targeted by the magic missile spell' 'Self' '1 round' 543 681
sql_spells 'Wizard' 'Silent Image' 1 '1 action' '60 feet' 'Concentration, up to 10 minutes' 544 681
sql_spells 'Wizard' 'Sleep' 1 '1 action' '90 feet' '1 minute' 545 681
sql_spells 'Wizard' 'Thunderwave' 1 '1 action' 'Self (15-foot cube)' 'Instantaneous' 546 681
sql_spells 'Wizard' 'Alter Self' 2 '1 action' 'Self' 'Concentration, up to 1 hour' 547 681
sql_spells 'Wizard' 'Arcane Lock' 2 '1 action' 'Touch' 'Until dispelled' 548 681
sql_spells 'Wizard' 'Blindness/Deafness' 2 '1 action' '30 feet' '1 minute' 549 681
sql_spells 'Wizard' 'Blur' 2 '1 action' 'Self' 'Concentration, up to 1 minute' 550 681
sql_spells 'Wizard' 'Continual Flame' 2 '1 action' 'Touch' 'Until dispelled' 551 681
sql_spells 'Wizard' 'Darkness' 2 '1 action' '60 feet' 'Concentration, up to 10 minutes' 552 681
sql_spells 'Wizard' 'Darkvision' 2 '1 action' 'Touch' '8 hours' 553 681
sql_spells 'Wizard' 'Detect Thoughts' 2 '1 action' 'Self' 'Concentration, up to 1 minute' 554 681
sql_spells 'Wizard' 'Enlarge/Reduce' 2 '1 action' '30 feet' 'Concentration, up to 1 minute' 555 681
sql_spells 'Wizard' 'Flaming Sphere' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 556 681
sql_spells 'Wizard' 'Gentle Repose' 2 '1 action' 'Touch' '10 days' 557 681
sql_spells 'Wizard' 'Gust of Wind' 2 '1 action' 'Self (60-foot line)' 'Concentration, up to 1 minute' 558 681
sql_spells 'Wizard' 'Hold Person' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 559 681
sql_spells 'Wizard' 'Invisibility' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 560 681
sql_spells 'Wizard' 'Knock' 2 '1 action' '60 feet' 'Instantaneous' 561 681
sql_spells 'Wizard' 'Levitate' 2 '1 action' '60 feet' 'Concentration, up to 10 minutes' 562 681
sql_spells 'Wizard' 'Locate Object' 2 '1 action' 'Self' 'Concentration, up to 10 minutes' 563 681
sql_spells 'Wizard' 'Magic Mouth' 2 '1 minute' '30 feet' 'Until dispelled' 564 681
sql_spells 'Wizard' 'Magic Weapon' 2 '1 bonus action' 'Touch' 'Concentration, up to 1 hour' 565 681
sql_spells 'Wizard' 'Mirror Image' 2 '1 action' 'Self' '1 minute' 566 681
sql_spells 'Wizard' 'Misty Step' 2 '1 bonus action' 'Self' 'Instantaneous' 567 681
sql_spells 'Wizard' 'Ray of Enfeeblement' 2 '1 action' '60 feet' 'Concentration, up to 1 minute' 568 681
sql_spells 'Wizard' 'Rope Trick' 2 '1 action' 'Touch' '1 hour' 569 681
sql_spells 'Wizard' 'Scorching Ray' 2 '1 action' '120 feet' 'Instantaneous' 570 681
sql_spells 'Wizard' 'See Invisibility' 2 '1 action' 'Self' '1 hour' 571 681
sql_spells 'Wizard' 'Shatter' 2 '1 action' '60 feet' 'Instantaneous' 572 681
sql_spells 'Wizard' 'Spider Climb' 2 '1 action' 'Touch' 'Concentration, up to 1 hour' 573 681
sql_spells 'Wizard' 'Suggestion' 2 '1 action' '30 feet' 'Concentration, up to 8 hours' 574 681
sql_spells 'Wizard' 'Web' 2 '1 action' '60 feet' 'Concentration, up to 1 hour' 575 681
sql_spells 'Wizard' 'Animate Dead' 3 '1 minute' '10 feet' 'Instantaneous' 576 681
sql_spells 'Wizard' 'Blink' 3 '1 action' 'Self' '1 minute' 577 681
sql_spells 'Wizard' 'Counterspell' 3 '1 reaction, which you take when you see a creature within 60 feet of you casting a spell' '60 feet' 'Instantaneous' 578 681
sql_spells 'Wizard' 'Dispel Magic' 3 '1 action' '120 feet' 'Instantaneous' 579 681
sql_spells 'Wizard' 'Fear' 3 '1 action' 'Self (30-foot cone)' 'Concentration, up to 1 minute' 580 681
sql_spells 'Wizard' 'Fireball' 3 '1 action' '150 feet' 'Instantaneous' 581 681
sql_spells 'Wizard' 'Fly' 3 '1 action' 'Touch' 'Concentration, up to 10 minutes' 582 681
sql_spells 'Wizard' 'Gaseous Form' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 583 681
sql_spells 'Wizard' 'Haste' 3 '1 action' '30 feet' 'Concentration, up to 1 minute' 584 681
sql_spells 'Wizard' 'Hypnotic Pattern' 3 '1 action' '120 feet' 'Concentration, up to 1 minute' 585 681
sql_spells 'Wizard' 'Lightning Bolt' 3 '1 action' 'Self (100-foot line)' 'Instantaneous' 586 681
sql_spells 'Wizard' 'Magic Circle' 3 '1 minute' '10 feet' '1 hour' 587 681
sql_spells 'Wizard' 'Major Image' 3 '1 action' '120 feet' 'Concentration, up to 10 minutes' 588 681
sql_spells 'Wizard' 'Nondetection' 3 '1 action' 'Touch' '8 hours' 589 681
sql_spells 'Wizard' 'Phantom Steed' 3 '1 minute' '30 feet' '1 hour' 590 681
sql_spells 'Wizard' 'Protection from Energy' 3 '1 action' 'Touch' 'Concentration, up to 1 hour' 591 681
sql_spells 'Wizard' 'Remove Curse' 3 '1 action' 'Touch' 'Instantaneous' 592 681
sql_spells 'Wizard' 'Sending' 3 '1 action' 'Unlimited' '1 round' 593 681
sql_spells 'Wizard' 'Sleet Storm' 3 '1 action' '150 feet' 'Concentration, up to 1 minute' 594 681
sql_spells 'Wizard' 'Tongues' 3 '1 action' 'Touch' '1 hour' 595 681
sql_spells 'Wizard' 'Vampiric Touch' 3 '1 action' 'Self' 'Concentration, up to 1 minute' 596 681
sql_spells 'Wizard' 'Water Breathing' 3 '1 action' '30 feet' '24 hours' 597 681
sql_spells 'Wizard' 'Arcane Eye' 4 '1 action' '30 feet' 'Concentration, up to 1 hour' 598 681
sql_spells 'Wizard' 'Banishment' 4 '1 action' '60 feet' 'Concentration, up to 1 minute' 599 681
sql_spells 'Wizard' 'Blight' 4 '1 action' '30 feet' 'Instantaneous' 600 681
sql_spells 'Wizard' 'Confusion' 4 '1 action' '90 feet' 'Concentration, up to 1 minute' 601 681
sql_spells 'Wizard' 'Control Water' 4 '1 action' '300 feet' 'Concentration, up to 10 minutes' 602 681
sql_spells 'Wizard' 'Dimension Door' 4 '1 action' '500 feet' 'Instantaneous' 603 681
sql_spells 'Wizard' 'Fabricate' 4 '10 minutes' '120 feet' 'Instantaneous' 604 681
sql_spells 'Wizard' 'Fire Shield' 4 '1 action' 'Self' '10 minutes' 605 681
sql_spells 'Wizard' 'Greater Invisibility' 4 '1 action' 'Touch' 'Concentration, up to 1 minute' 606 681
sql_spells 'Wizard' 'Hallucinatory Terrain' 4 '10 minutes' '300 feet' '24 hours' 607 681
sql_spells 'Wizard' 'Ice Storm' 4 '1 action' '300 feet' 'Instantaneous' 608 681
sql_spells 'Wizard' 'Locate Creature' 4 '1 action' 'Self' 'Concentration, up to 1 hour' 609 681
sql_spells 'Wizard' 'Phantasmal Killer' 4 '1 action' '120 feet' 'Concentration, up to 1 minute' 610 681
sql_spells 'Wizard' 'Stone Shape' 4 '1 action' 'Touch' 'Instantaneous' 611 681
sql_spells 'Wizard' 'Stoneskin' 4 '1 action' 'Touch' 'Concentration, up to 1 hour' 612 681
sql_spells 'Wizard' 'Wall of Fire' 4 '1 action' '120 feet' 'Concentration, up to 1 minute' 613 681
sql_spells 'Wizard' 'Animate Objects' 5 '1 action' '120 feet' 'Concentration, up to 1 minute' 614 681
sql_spells 'Wizard' 'Cloudkill' 5 '1 action' '120 feet' 'Concentration, up to 10 minutes' 615 681
sql_spells 'Wizard' 'Cone of Cold' 5 '1 action' 'Self (60-foot cone)' 'Instantaneous' 616 681
sql_spells 'Wizard' 'Conjure Elemental' 5 '1 minute' '90 feet' 'Concentration, up to 1 hour' 617 681
sql_spells 'Wizard' 'Creation' 5 '1 minute' '30 feet' 'Special' 618 681
sql_spells 'Wizard' 'Dominate Person' 5 '1 action' '60 feet' 'Concentration, up to 1 minute' 619 681
sql_spells 'Wizard' 'Dream' 5 '1 minute' 'Special' '8 hours' 620 681
sql_spells 'Wizard' 'Hold Monster' 5 '1 action' '90 feet' 'Concentration, up to 1 minute' 621 681
sql_spells 'Wizard' 'Legend Lore' 5 '10 minutes' 'Self' 'Instantaneous' 622 681
sql_spells 'Wizard' 'Mislead' 5 '1 action' 'Self' 'Concentration, up to 1 hour' 623 681
sql_spells 'Wizard' 'Modify Memory' 5 '1 action' '30 feet' 'Concentration, up to 1 minute' 624 681
sql_spells 'Wizard' 'Passwall' 5 '1 action' '30 feet' '1 hour' 625 681
sql_spells 'Wizard' 'Planar Binding' 5 '1 hour' '60 feet' '24 hours' 626 681
sql_spells 'Wizard' 'Scrying' 5 '10 minutes' 'Self' 'Concentration, up to 10 minutes' 627 681
sql_spells 'Wizard' 'Seeming' 5 '1 action' '30 feet' '8 hours' 628 681
sql_spells 'Wizard' 'Telekinesis' 5 '1 action' '60 feet' 'Concentration, up to 10 minutes' 629 681
sql_spells 'Wizard' 'Teleportation Circle' 5 '1 minute' '10 feet' '1 round' 630 681
sql_spells 'Wizard' 'Wall of Force' 5 '1 action' '120 feet' 'Concentration, up to 10 minutes' 631 681
sql_spells 'Wizard' 'Wall of Stone' 5 '1 action' '120 feet' 'Concentration, up to 10 minutes' 632 681
sql_spells 'Wizard' 'Chain Lightning' 6 '1 action' '150 feet' 'Instantaneous' 633 681
sql_spells 'Wizard' 'Circle of Death' 6 '1 action' '150 feet' 'Instantaneous' 634 681
sql_spells 'Wizard' 'Contingency' 6 '10 minutes' 'Self' '10 days' 635 681
sql_spells 'Wizard' 'Create Undead' 6 '1 minute' '10 feet' 'Instantaneous' 636 681
sql_spells 'Wizard' 'Disintegrate' 6 '1 action' '60 feet' 'Instantaneous' 637 681
sql_spells 'Wizard' 'Eyebite' 6 '1 action' 'Self' 'Concentration, up to 1 minute' 638 681
sql_spells 'Wizard' 'Flesh to Stone' 6 '1 action' '60 feet' 'Concentration, up to 1 minute' 639 681
sql_spells 'Wizard' 'Globe of Invulnerability' 6 '1 action' 'Self (10-foot radius)' 'Concentration, up to 1 minute' 640 681
sql_spells 'Wizard' 'Magic Jar' 6 '1 minute' 'Self' 'Until dispelled' 641 681
sql_spells 'Wizard' 'Mass Suggestion' 6 '1 action' '60 feet' '24 hours' 642 681
sql_spells 'Wizard' 'Move Earth' 6 '1 action' '120 feet' 'Concentration, up to 2 hours' 643 681
sql_spells 'Wizard' 'Programmed Illusion' 6 '1 action' '120 feet' 'Until dispelled' 644 681
sql_spells 'Wizard' 'Sunbeam' 6 '1 action' 'Self (60-foot line)' 'Concentration, up to 1 minute' 645 681
sql_spells 'Wizard' 'True Seeing' 6 '1 action' 'Touch' '1 hour' 646 681
sql_spells 'Wizard' 'Wall of Ice' 6 '1 action' '120 feet' 'Concentration, up to 10 minutes' 647 681
sql_spells 'Wizard' 'Delayed Blast Fireball' 7 '1 action' '150 feet' 'Concentration, up to 1 minute' 648 681
sql_spells 'Wizard' 'Etherealness' 7 '1 action' 'Self' 'Up to 8 hours' 649 681
sql_spells 'Wizard' 'Finger of Death' 7 '1 action' '60 feet' 'Instantaneous' 650 681
sql_spells 'Wizard' 'Mirage Arcane' 7 '10 minutes' 'Sight' '10 days' 651 681
sql_spells 'Wizard' 'Plane Shift' 7 '1 action' 'Touch' 'Instantaneous' 652 681
sql_spells 'Wizard' 'Prismatic Spray' 7 '1 action' 'Self (60-foot cone)' 'Instantaneous' 653 681
sql_spells 'Wizard' 'Project Image' 7 '1 action' '500 miles' 'Concentration, up to 1 day' 654 681
sql_spells 'Wizard' 'Reverse Gravity' 7 '1 action' '100 feet' 'Concentration, up to 1 minute' 655 681
sql_spells 'Wizard' 'Sequester' 7 '1 action' 'Touch' 'Until dispelled' 656 681
sql_spells 'Wizard' 'Simulacrum' 7 '12 hours' 'Touch' 'Until dispelled' 657 681
sql_spells 'Wizard' 'Symbol' 7 '1 minute' 'Touch' 'Until dispelled or triggered' 658 681
sql_spells 'Wizard' 'Teleport' 7 '1 action' '10 feet' 'Instantaneous' 659 681
sql_spells 'Wizard' 'Antimagic Field' 8 '1 action' 'Self (10-foot-radius sphere)' 'Concentration, up to 1 hour' 660 681
sql_spells 'Wizard' 'Clone' 8 '1 hour' 'Touch' 'Instantaneous' 661 681
sql_spells 'Wizard' 'Control Weather' 8 '10 minutes' 'Self (5-mile radius)' 'Concentration, up to 8 hours' 662 681
sql_spells 'Wizard' 'Demiplane' 8 '1 action' '60 feet' '1 hour' 663 681
sql_spells 'Wizard' 'Dominate Monster' 8 '1 action' '60 feet' 'Concentration, up to 1 hour' 664 681
sql_spells 'Wizard' 'Feeblemind' 8 '1 action' '150 feet' 'Instantaneous' 665 681
sql_spells 'Wizard' 'Incendiary Cloud' 8 '1 action' '150 feet' 'Concentration, up to 1 minute' 666 681
sql_spells 'Wizard' 'Maze' 8 '1 action' '60 feet' 'Concentration, up to 10 minutes' 667 681
sql_spells 'Wizard' 'Mind Blank' 8 '1 action' 'Touch' '24 hours' 668 681
sql_spells 'Wizard' 'Power Word Stun' 8 '1 action' '60 feet' 'Instantaneous' 669 681
sql_spells 'Wizard' 'Sunburst' 8 '1 action' '150 feet' 'Instantaneous' 670 681
sql_spells 'Wizard' 'Astral Projection' 9 '1 hour' '10 feet' 'Special' 671 681
sql_spells 'Wizard' 'Foresight' 9 '1 minute' 'Touch' '8 hours' 672 681
sql_spells 'Wizard' 'Gate' 9 '1 action' '60 feet' 'Concentration, up to 1 minute' 673 681
sql_spells 'Wizard' 'Imprisonment' 9 '1 minute' '30 feet' 'Until dispelled' 674 681
sql_spells 'Wizard' 'Meteor Swarm' 9 '1 action' '1 mile' 'Instantaneous' 675 681
sql_spells 'Wizard' 'Power Word Kill' 9 '1 action' '60 feet' 'Instantaneous' 676 681
sql_spells 'Wizard' 'Prismatic Wall' 9 '1 action' '60 feet' '10 minutes' 677 681
sql_spells 'Wizard' 'Time Stop' 9 '1 action' 'Self' 'Instantaneous' 678 681
sql_spells 'Wizard' 'True Polymorph' 9 '1 action' '30 feet' 'Concentration, up to 1 hour' 679 681
sql_spells 'Wizard' 'Weird' 9 '1 action' '120 feet' 'Concentration, up to one minute' 680 681
sql_spells 'Wizard' 'Wish' 9 '1 action' 'Self' 'Instantaneous' 681 681

echo "Adding character table (0/0)"
sqlite3 $HOME/.dnd.db "create table if not exists character( character_name TEXT, class TEXT, level TEXT, background TEXT, race TEXT, alignment TEXT, experience_points TEXT, inspiration TEXT, proficiency_bonus TEXT, personality_traits TEXT, ideals TEXT, bonds TEXT, flaws TEXT, saving_strength_bonus TEXT, saving_strength_prof TEXT, saving_dexterity_bonus TEXT, saving_dexterity_prof TEXT, saving_constitution_bonus TEXT, saving_constitution_prof TEXT, saving_intelligence_bonus TEXT, saving_intelligence_prof TEXT, saving_wisdom_bonus TEXT, saving_wisdom_prof TEXT, saving_charisma_bonus TEXT, saving_charisma_prof TEXT, current_hit_points TEXT, temp_hit_points TEXT, hit_dice TEXT, passive_wisdom TEXT, death_save_success_1 TEXT, death_save_success_2 TEXT, death_save_success_3 TEXT, death_save_failure_1 TEXT, death_save_failure_2 TEXT, death_save_failure_3 TEXT, skills_acrobatics_bonus TEXT, skills_acrobatics_prof TEXT, skills_animal_handiling_bonus TEXT, skills_animal_handiling_prof TEXT, skills_athletics_bonus TEXT, skills_athletics_prof TEXT, skills_deception_bonus TEXT, skills_deception_prof TEXT, skills_history_bonus TEXT, skills_history_prof TEXT, skills_intimidation_bonus TEXT, skills_intimidation_prof TEXT, skills_investigation_bonus TEXT, skills_investigation_prof TEXT, skills_medicine_bonus TEXT, skills_medicine_prof TEXT, skills_nature_bonus TEXT, skills_nature_prof TEXT, skills_perception_bonus TEXT, skills_perception_prof TEXT, skills_performance_bonus TEXT, skills_performance_prof TEXT, skills_persuasion_bonus TEXT, skills_persuasion_prof TEXT, skills_religion_bonus TEXT, skills_religion_prof TEXT, skills_sleight_of_hand_bonus TEXT, skills_sleight_of_hand_prof TEXT, skills_stealth_bonus TEXT, skills_stealth_prof TEXT, skills_survival_bonus TEXT, skills_survival_prof TEXT, strength TEXT, strength_mod TEXT, dexterity TEXT, dexterity_mod TEXT, constitution TEXT, constitution_mod TEXT, intelligience TEXT, intelligience_mod TEXT, wisdom TEXT, wisdom_mod TEXT, charisma TEXT, charisma_mod TEXT, attack_1_name TEXT, attack_2_name TEXT, attack_3_name TEXT, attack_4_name TEXT, attack_5_name TEXT, attack_6_name TEXT, attack_7_name TEXT, attack_8_name TEXT, attack_1_atk TEXT, attack_2_atk TEXT, attack_3_atk TEXT, attack_4_atk TEXT, attack_5_atk TEXT, attack_6_atk TEXT, attack_7_atk TEXT, attack_8_atk TEXT, attack_1_damage TEXT, attack_2_damage TEXT, attack_3_damage TEXT, attack_4_damage TEXT, attack_5_damage TEXT, attack_6_damage TEXT, attack_7_damage TEXT, attack_8_damage TEXT, spell_1_name TEXT, spell_2_name TEXT, spell_3_name TEXT, spell_4_name TEXT, spell_5_name TEXT, spell_6_name TEXT, spell_7_name TEXT, spell_8_name TEXT, spell_1_atk TEXT, spell_2_atk TEXT, spell_3_atk TEXT, spell_4_atk TEXT, spell_5_atk TEXT, spell_6_atk TEXT, spell_7_atk TEXT, spell_8_atk TEXT, spell_1_damage TEXT, spell_2_damage TEXT, spell_3_damage TEXT, spell_4_damage TEXT, spell_5_damage TEXT, spell_6_damage TEXT, spell_7_damage TEXT, spell_8_damage TEXT, language_1 TEXT, language_2 TEXT, language_3 TEXT, language_4 TEXT, language_5 TEXT, language_6 TEXT, language_7 TEXT, language_8 TEXT, money_cp TEXT, money_sp TEXT, money_ep TEXT, money_gp TEXT, money_pp TEXT, feature_1_name TEXT, feature_1_source TEXT, feature_1_type TEXT, feature_2_name TEXT, feature_2_source TEXT, feature_2_type TEXT, feature_3_name TEXT, feature_3_source TEXT, feature_3_type TEXT, feature_4_name TEXT, feature_4_source TEXT, feature_4_type TEXT, feature_5_name TEXT, feature_5_source TEXT, feature_5_type TEXT, feature_6_name TEXT, feature_6_source TEXT, feature_6_type TEXT, feature_7_name TEXT, feature_7_source TEXT, feature_7_type TEXT, feature_8_name TEXT, feature_8_source TEXT, feature_8_type TEXT, item_1_name TEXT, item_1_count TEXT, item_1_weight TEXT, item_2_name TEXT, item_2_count TEXT, item_2_weight TEXT, item_3_name TEXT, item_3_count TEXT, item_3_weight TEXT, item_4_name TEXT, item_4_count TEXT, item_4_weight TEXT, item_5_name TEXT, item_5_count TEXT, item_5_weight TEXT, item_6_name TEXT, item_6_count TEXT, item_6_weight TEXT, item_7_name TEXT, item_7_count TEXT, item_7_weight TEXT, item_8_name TEXT, item_8_count TEXT, item_8_weight TEXT, item_9_name TEXT, item_9_count TEXT, item_9_weight TEXT, item_10_name TEXT, item_10_count TEXT, item_10_weight TEXT, item_11_name TEXT, item_11_count TEXT, item_11_weight TEXT, item_12_name TEXT, item_12_count TEXT, item_12_weight TEXT, item_13_name TEXT, item_13_count TEXT, item_13_weight TEXT, item_14_name TEXT, item_14_count TEXT, item_14_weight TEXT, item_15_name TEXT, item_15_count TEXT, item_15_weight TEXT, item_16_name TEXT, item_16_count TEXT, item_16_weight TEXT, item_17_name TEXT, item_17_count TEXT, item_17_weight TEXT, item_18_name TEXT, item_18_count TEXT, item_18_weight TEXT, item_19_name TEXT, item_19_count TEXT, item_19_weight TEXT, item_20_name TEXT, item_20_count TEXT, item_20_weight TEXT, item_21_name TEXT, item_21_count TEXT, item_21_weight TEXT, item_22_name TEXT, item_22_count TEXT, item_22_weight TEXT, item_23_name TEXT, item_23_count TEXT, item_23_weight TEXT, item_24_name TEXT, item_24_count TEXT, item_24_weight TEXT, item_25_name TEXT, item_25_count TEXT, item_25_weight TEXT, item_26_name TEXT, item_26_count TEXT, item_26_weight TEXT, item_27_name TEXT, item_27_count TEXT, item_27_weight TEXT, item_28_name TEXT, item_28_count TEXT, item_28_weight TEXT, item_29_name TEXT, item_29_count TEXT, item_29_weight TEXT, item_30_name TEXT, item_30_count TEXT, item_30_weight TEXT, item_31_name TEXT, item_31_count TEXT, item_31_weight TEXT, item_32_name TEXT, item_32_count TEXT, item_32_weight TEXT, UNIQUE( character_name, class, level, background, race, alignment, experience_points, inspiration, proficiency_bonus, personality_traits, ideals, bonds, flaws, saving_strength_bonus, saving_strength_prof, saving_dexterity_bonus, saving_dexterity_prof, saving_constitution_bonus, saving_constitution_prof, saving_intelligence_bonus, saving_intelligence_prof, saving_wisdom_bonus, saving_wisdom_prof, saving_charisma_bonus, saving_charisma_prof, current_hit_points, temp_hit_points, hit_dice, passive_wisdom, death_save_success_1, death_save_success_2, death_save_success_3, death_save_failure_1, death_save_failure_2, death_save_failure_3, skills_acrobatics_bonus, skills_acrobatics_prof, skills_animal_handiling_bonus, skills_animal_handiling_prof, skills_athletics_bonus, skills_athletics_prof, skills_deception_bonus, skills_deception_prof, skills_history_bonus, skills_history_prof, skills_intimidation_bonus, skills_intimidation_prof, skills_investigation_bonus, skills_investigation_prof, skills_medicine_bonus, skills_medicine_prof, skills_nature_bonus, skills_nature_prof, skills_perception_bonus, skills_perception_prof, skills_performance_bonus, skills_performance_prof, skills_persuasion_bonus, skills_persuasion_prof, skills_religion_bonus, skills_religion_prof, skills_sleight_of_hand_bonus, skills_sleight_of_hand_prof, skills_stealth_bonus, skills_stealth_prof, skills_survival_bonus, skills_survival_prof, strength, strength_mod, dexterity, dexterity_mod, constitution, constitution_mod, intelligience, intelligience_mod, wisdom, wisdom_mod, charisma, charisma_mod, attack_1_name, attack_2_name, attack_3_name, attack_4_name, attack_5_name, attack_6_name, attack_7_name, attack_8_name, attack_1_atk, attack_2_atk, attack_3_atk, attack_4_atk, attack_5_atk, attack_6_atk, attack_7_atk, attack_8_atk, attack_1_damage, attack_2_damage, attack_3_damage, attack_4_damage, attack_5_damage, attack_6_damage, attack_7_damage, attack_8_damage, spell_1_name, spell_2_name, spell_3_name, spell_4_name, spell_5_name, spell_6_name, spell_7_name, spell_8_name, spell_1_atk, spell_2_atk, spell_3_atk, spell_4_atk, spell_5_atk, spell_6_atk, spell_7_atk, spell_8_atk, spell_1_damage, spell_2_damage, spell_3_damage, spell_4_damage, spell_5_damage, spell_6_damage, spell_7_damage, spell_8_damage, language_1, language_2, language_3, language_4, language_5, language_6, language_7, language_8, money_cp, money_sp, money_ep, money_gp, money_pp, feature_1_name, feature_1_source, feature_1_type, feature_2_name, feature_2_source, feature_2_type, feature_3_name, feature_3_source, feature_3_type, feature_4_name, feature_4_source, feature_4_type, feature_5_name, feature_5_source, feature_5_type, feature_6_name, feature_6_source, feature_6_type, feature_7_name, feature_7_source, feature_7_type, feature_8_name, feature_8_source, feature_8_type, item_1_name, item_1_count, item_1_weight, item_2_name, item_2_count, item_2_weight, item_3_name, item_3_count, item_3_weight, item_4_name, item_4_count, item_4_weight, item_5_name, item_5_count, item_5_weight, item_6_name, item_6_count, item_6_weight, item_7_name, item_7_count, item_7_weight, item_8_name, item_8_count, item_8_weight, item_9_name, item_9_count, item_9_weight, item_10_name, item_10_count, item_10_weight, item_11_name, item_11_count, item_11_weight, item_12_name, item_12_count, item_12_weight, item_13_name, item_13_count, item_13_weight, item_14_name, item_14_count, item_14_weight, item_15_name, item_15_count, item_15_weight, item_16_name, item_16_count, item_16_weight, item_17_name, item_17_count, item_17_weight, item_18_name, item_18_count, item_18_weight, item_19_name, item_19_count, item_19_weight, item_20_name, item_20_count, item_20_weight, item_21_name, item_21_count, item_21_weight, item_22_name, item_22_count, item_22_weight, item_23_name, item_23_count, item_23_weight, item_24_name, item_24_count, item_24_weight, item_25_name, item_25_count, item_25_weight, item_26_name, item_26_count, item_26_weight, item_27_name, item_27_count, item_27_weight, item_28_name, item_28_count, item_28_weight, item_29_name, item_29_count, item_29_weight, item_30_name, item_30_count, item_30_weight, item_31_name, item_31_count, item_31_weight, item_32_name, item_32_count, item_32_weight));"
