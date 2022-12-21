#!/bin/bash

function sql_languages() { sqlite3 $HOME/.dnd.db "insert or ignore into languages (name) values ('$1');" ; }

function sql_equipment() { sqlite3 $HOME/.dnd.db "insert or ignore into equipment (name, price, weight) values ('$1', '$2', '$3');" ; }

if ! [ -x "$(command -v sqlite3)" ]
then
	echo "Error: sqlite3 is not installed." >&2
	exit 1
else
	echo "Found sqlite3." >&2
fi

echo "Adding Languages."
sqlite3 $HOME/.dnd.db "create table if not exists languages (name TEXT, UNIQUE(name));"
sql_languages "Common"
sql_languages "Dwarvish"
sql_languages "Elvish"
sql_languages "Giant"
sql_languages "Gnomish"
sql_languages "Goblin"
sql_languages "Halfling"
sql_languages "Orc"
sql_languages "Abyssal"
sql_languages "Celestial"
sql_languages "Draconic"
sql_languages "Deep\ Speech"
sql_languages "Infernal"
sql_languages "Primordial"
sql_languages "Sylvan"
sql_languages "Undercommon"
sql_languages "Druidic"

echo "Adding equipment"
sqlite3 $HOME/.dnd.db "create table if not exists equipment (name TEXT, price TEXT, weight TEXT, UNIQUE(name, price, weight));"
sql_equipment "Abacus" "2" "2"
sql_equipment "Acid\ \(vial\)" 25 1
sql_equipment "Alchemists\ fire\ \(flask\)" 50 1
sql_equipment "Alchemists\ supplies" 50 8
sql_equipment "Antitoxin\ \(vial\)" 50 0
sql_equipment "Arrows\ \(20\)" 1 1
sql_equipment "Backpack" 2 5
sql_equipment "Bagpipes" 30 6
sql_equipment "Ball\ bearings \(bag\ of\ 1000\)" 1 2
sql_equipment "Barrel" 2 70
sql_equipment "Basket" 0.4 2
sql_equipment "Bedroll" 1 7
sql_equipment "Bell" 1 0
sql_equipment "Blanket" 0.5 3
sql_equipment "Block\ and\ tackle" 1 5
sql_equipment "Blowgun\ needles \(50\)" 1 1
sql_equipment "Book" 25 5
sql_equipment "Glass\ Bottle" 2 2
sql_equipment "Brewers\ Supplies" 20 9
sql_equipment "Bucket" 0.05 2
sql_equipment "Calligraphers\ Supplies" 10 5
sql_equipment "Caltrops \(bag\ of\ 20\)" 1 2
sql_equipment "Candle" 0.01 0
sql_equipment "Carpenters\ Tools" 8 6
sql_equipment "Cartographers\ Tools" 15 6
sql_equipment "Case\ crossbow\ bolt" 1 1
sql_equipment "Case\ map\ or\ scroll" 1 1
sql_equipment "Chain \(10\ feet\)" 5 10
sql_equipment "Chalk \(1\ piece\)" 0.01 0
sql_equipment "Chest" 5 25
sql_equipment "Climbers\ kit" 25 12
sql_equipment "Clothes\ Common" 0.5 3
sql_equipment "Clothes\ Costume" 5 4
sql_equipment "Clothes\ Fine" 15 6
sql_equipment "Clothes\ Travelers" 2 4
sql_equipment "Cobblers\ Tools" 5 5
sql_equipment "Component\ pouch" 25 2
sql_equipment "Cooks\ Utensils" 1 8
sql_equipment "Crossbow\ bolts\ \(20\)" 1 1.5
sql_equipment "Crowbar" 2 5
sql_equipment "Crystal" 10 1
sql_equipment "Dice\ Set" 0.1 0
sql_equipment "Disguise\ Kit" 25 3
sql_equipment "Dragonchess\ Set" 1 0.5
sql_equipment "Drum" 6 3
sql_equipment "Dulcimer" 25 10
sql_equipment "Fishing\ tackle" 1 4
sql_equipment "Flask\ or\ tankard" 0.02 1
sql_equipment "Flute" 2 1
sql_equipment "Forgery\ Kit" 15 5
sql_equipment "Glassblowers\ Tools" 30 5
sql_equipment "Grappling\ hook" 2 4
sql_equipment "Hammer\ sledge" 2 10
sql_equipment "Hammer" 1 3
sql_equipment "Healers\ kit" 5 3
sql_equipment "Herbalism\ Kit" 5 3
sql_equipment "Holy\ Symbol\ \(Amulet\)" 5 1
sql_equipment "Holy\ Symbol\ \(Emblem\)" 5 0
sql_equipment "Holy\ Symbol\ \(Reliquary\)" 5 2
sql_equipment "Holy\ water\ \(flask\)" 25 1
sql_equipment "Horn" 3 2
sql_equipment "Hourglass" 25 1
sql_equipment "Hunting\ trap" 5 25
sql_equipment "Ink\ \(1\ ounce\ bottle\)" 10 0
sql_equipment "Ink\ pen" 0.02 0
sql_equipment "Jewelers\ Tools" 25 2
sql_equipment "Jug\ or\ pitcher" 0.02 4
sql_equipment "Ladder\ \(10-foot\)" 0.1 25
sql_equipment "Lamp" 0.5 1
sql_equipment "Lantern\ bullseye" 10 2
sql_equipment "Lantern\ hooded" 5 2
sql_equipment "Leatherworkers\ Tools" 5 5
sql_equipment "Lock" 10 1
sql_equipment "Lute" 35 2
sql_equipment "Lyre" 30 2
sql_equipment "Magnifying\ glass" 100 0
sql_equipment "Manacles" 2 6
sql_equipment "Masons\ Tools" 10 8
sql_equipment "Mess\ kit" 0.2 1
sql_equipment "Mirror\ steel" 5 0.5
sql_equipment "Navigators\ Tools" 25 2
sql_equipment "Oil\ \(flask\)" 0.1 1
sql_equipment "Orb" 20 3
sql_equipment "Painters\ Supplies" 10 5
sql_equipment "Pan\ flute" 12 2
sql_equipment "Paper\ \(one\ sheet\)" 0.2 0
sql_equipment "Parchment\ \(one\ sheet\)" 0.1 0
sql_equipment "Perfume\ \(vial\)" 5 0
sql_equipment "Pick\ miners" 2 10
sql_equipment "Piton" 0.05 0.25
sql_equipment "Playing\ Card\ Set" 5 0
sql_equipment "Poison\ basic\ \(vial\)" 100 0
sql_equipment "Poisoners\ Kit" 50 2
sql_equipment "Pole\ \(10-foot\)" 0.05 7
sql_equipment "Potion\ of\ healing" 50 0.5
sql_equipment "Pot\ iron" 2 10
sql_equipment "Potters\ Tools" 10 3
sql_equipment "Pouch" 0.5 1
sql_equipment "Quiver" 1 1
sql_equipment "Ram\ portable" 4 35
sql_equipment "Rations\ \(1 day\)" 0.5 2
sql_equipment "Robes" 1 4
sql_equipment "Rod" 10 2
sql_equipment "Rope\ hempen\ \(50 feet\)" 1 10
sql_equipment "Rope\ silk\ \(50 feet\)" 10 5
sql_equipment "Sack" 0.01 0.5
sql_equipment "Scale\ merchants" 5 3
sql_equipment "Sealing\ wax" 0.5 0
sql_equipment "Shawm" 2 1
sql_equipment "Shovel" 2 5
sql_equipment "Signal\ whistle" 0.05 0
sql_equipment "Signet\ ring" 5 0
sql_equipment "Sling\ bullets\ \(20\)" 0.04 1.5
sql_equipment "Smiths\ Tools" 20 8
sql_equipment "Spellbook" 50 3
sql_equipment "Spikes\ iron\ \(10\)" 1 5
sql_equipment "Sprig\ of\ mistletoe" 1 0
sql_equipment "Spyglass" 1000 1
sql_equipment "Staff" 5 4
sql_equipment "Tent\ two-person" 2 20
sql_equipment "Thieves\ Tools" 25 1
sql_equipment "Three-Dragon\ Ante Set" 1 0
sql_equipment "Tinderbox" 0.5 1
sql_equipment "Tinkers\ Tools" 50 10
sql_equipment "Torch" 0.01 1
sql_equipment "Totem" 1 0
sql_equipment "Vial" 1 0
sql_equipment "Viol" 30 1
sql_equipment "Wand" 10 1
sql_equipment "Waterskin" 0.2 5
sql_equipment "Weavers\ tools" 1 5
sql_equipment "Whetstone" 0.01 1
sql_equipment "Woodcarvers\ Tools" 1 5
sql_equipment "Wooden\ staff" 5 4
sql_equipment "Yew\ Wand" 10 1
