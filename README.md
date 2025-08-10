# weirdhouse
Getting to 256 in KoL's Mansion of Dr. Weirdeaux with KoLmafia. 

**This is for the browser based game kingdomofloathing.com, if you are not playing it, you should.**

This script is for power-leveling to 256, the max level. It is completely unnecessary for any other reason than to say you did, or if you are building a bot.

The adventure zone is here:
https://kol.coldfront.net/thekolwiki/index.php/The_Mansion_of_Dr._Weirdeaux

---
This script is incredibly rough and hacked together from other scripts I have. It also doesn't buy, eat/drink, equip, or set your gear. It currently doesn't run first use settings either. Those need to be done here:

In the KoLmafia Graphical CLI enter this command before running the script the very first time:

`ash set_property("currentweirdkill", 0);`

This creates the value to track the life of the Weirdeaux monster.

Then every other time, to run the script just enter `weirdhouse X` where X is the number of adventures you want to spend

IF the script breaks (you run out of MP or run out of items) you will need to run the first command again, when you defeat the monster (if the monster defeats you nothing is needed). If you just run away you don't need to run the command below. Running away is recommended.

`ash set_property("currentweirdkill", X);`

Where X is the number given in the line "Weirdeaux Monster's killed: XXXX" plus 1.

Recommendations on Familiar:

--Potato base familiar: 

--Recommendation Xiblaxian Holo-Companion: https://kol.coldfront.net/thekolwiki/index.php/Xiblaxian_Holo-Companion

------_Xiblaxian holo-buddy simcode is really cheap and gives blocking and init_

--Use one of each of the soups from the primordial soup kitchen: https://kol.coldfront.net/thekolwiki/index.php/The_Primordial_Soup_Kitchen

---They give weight and extra abilities to the familiar

---
Recommendations on Gear

Hat:		Lens of Hatred	-- used for lowering enemy defense.

Back:		Duke Vampire's regal cloak	-- Just used this for buffing stats

Shirt:		Crimbuccaneer bombjacket -- This is for dealing more damage with combat items

Weapon:		Dinsey's pizza cutter -- HAVE TO HAVE (This has a skill that reduces the life of the monster to manageable levels)

Off-Hand:		ancient hot dog wrapper	-- Used for MP regen

Pants:		Greaves of the Murk Lord -- For Fam weight

Accessory 1:		sphygmayomanometer	-- For buffing stats

Accessory 2:		Drunkula's ring of haze	-- blocks the next attack after you have been hit.

Accessory 3:		Mesmereyes™ contact lenses -- HAVE TO HAVE (This blocks attacks)

---
Things to note:

-Have you outfit on beforehand

-Hat needs to have 200 power and anything you want to wear is fine, I would suggest something with MP regen.

-If you don't have Drunkula's ring of haze you can use the attorney's badge.

-If you don't have Mayo Clinic you something else that blocks.

-Crimbuccaneer bombjacket can be replaced with Jurassic Parka as it has an automatic stagger.
