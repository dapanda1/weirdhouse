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

Then every other time, to run the script just enter **weirdhouse X**

IF the script breaks (you run out of MP or run out of items) you will need to run the first command again, when you defeat the monster (if the monster defeats you nothing is needed). If you just run away you don't need to run the command below. Running away is recommended.

`ash set_property("currentweirdkill", X);`

Where X is the number given in the line "Weirdeaux Monster's killed: XXXX" plus 1.
