# weirdhouse
Getting to LVL 256 as a MOXIE CLASS in KoL's Mansion of Dr. Weirdeaux with KoLmafia. 

**This is for the browser based game kingdomofloathing.com, if you are not playing it, you should.**

This script is for power-leveling to 256, the max level. It is completely unnecessary for any other reason than to say you did, or if you are building a bot. It was built from  this forum post: https://forums.kingdomofloathing.com/vb/showthread.php?t=209841

The adventure zone is here:
https://kol.coldfront.net/thekolwiki/index.php/The_Mansion_of_Dr._Weirdeaux

If you don't have access to Conspiracy Island you will need to buy a one day pass, "one-day ticket to Conspiracy Island"

Use this code to install the script:
`git checkout dapanda1/weirdhouse main`

---
This script is incredibly rough and hacked together from other scripts I have. It also doesn't buy, eat/drink, equip, or set your gear. Those need to be done here:

To run the script just enter `weirdhouse X` where X is the number of adventures you want to spend. If you have already ran this script once AND have used an "Agent Mauve", you need to enter this command before running the script:

`ash set_property("currentweirdkill", 0);`

This resets the value to track the HP of the Weirdeaux monster for the combat items. Math was used to determine how many hit points they have and if it is worth it to try to kill the monster with a combat item.

IF the script breaks without the combat ending (you run out of MP or run out of items) you will need to run the first command again, when you defeat the monster (if _the monster defeats you_ nothing is needed); If you just run away, you don't need to run the command below (Running away is recommended to keep things cleaner).

`ash set_property("currentweirdkill", X);`

In the command above 'X' is the number given in the line "Weirdeaux Monster's killed: XXXX" from the previous combat you won, plus 1.

Recommendations on Familiar:

--Potato base familiar. Recommendation is Xiblaxian Holo-Companion: https://kol.coldfront.net/thekolwiki/index.php/Xiblaxian_Holo-Companion

------_Xiblaxian holo-buddy simcode is really cheap in the mall and gives blocking and init_

--Use one of each of the soups from the primordial soup kitchen: https://kol.coldfront.net/thekolwiki/index.php/The_Primordial_Soup_Kitchen

---They give weight and extra abilities to the familiar. You want to hit a minimum weight of 60 to get a 90% block rate from the fam.

---
Recommendations on Gear: (Everything in this section should be able to be earned or purchased through the mall, without buying an Iotm)

Hat:		Anything for maxing DA (I used Lens of Hatred	for lowering enemy defense.)

Back:		Anything	-- Just used this for buffing stats, could also use it for MP regen.

Shirt:		Anything -- MP regen or blocking (Jurassic Parka) or I recommend the Crimbuccaneer bombjacket <- This is for dealing more damage with combat items

Weapon:		Dinsey's pizza cutter -- HAVE TO HAVE (This has a skill that reduces the life of the monster to manageable levels)

Off-Hand:		ancient hot dog wrapper	-- Used for MP regen

Pants:		Greaves of the Murk Lord -- For Fam weight or something else for MP regen

Accessory 1:		Anything for buffing stats, restore MP or a blocking item

Accessory 2:		attorney's badge (from mall) 25% chance at a block OR Drunkula's ring of haze	(from Dread) -- blocks the next attack after you have been hit.

Accessory 3:		Mesmereyes™ contact lenses -- HAVE TO HAVE (This blocks attacks)

---
Things to note:

-Be sure you are wearing your weird outfit before running the script

-Hat and pants should be anything that helps max your DA and anything you want to wear is fine, I would suggest something with MP regen though.

-Mayo Clinic is really good for buffing stats if you have it or can borrow it.

-Crimbuccaneer bombjacket can be replaced with Jurassic Parka as it has an automatic stagger, but that is an IoTM.

HARD REQUIREMENTS:

-Skills: Funkslinging, Utensil Twist, Shadow Noodles, Curse of Marinara

-Combat Items (Lots of): Divine Blowout (Probably 10,000-20,000), CSA obedience grenade (Probably 2000-3000), gas balloon (Probably 2000-3000) -- These are total amounts to get to max level

-Equipment: Dinsey's pizza cutter, Mesmereyes™ contact lenses

FUN STATS: Last use of this script 

-3,536 monster killed to reach mainstat cap

-3,650 monster killed to reach secondary stat cap (I used a stat distrubtion tuner for this)

-Highest HP of a killed Monster: 401,748,670

-Most XP at once for primary stat, without stat tuning: 569,535,721
