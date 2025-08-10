//need to manual set outfit

void main(string fight) {

item preferredItem1 = $item[divine blowout];
item stunItem1 = $item[CSA obedience grenade];
item stunItem2 = $item[gas balloon];

int currentwkill;
int newcurrentweirdkill;
int fightadv;

string havewcss = read_ccs('weirdhouse');
string havewpref = get_property("currentweirdkill") != "";

fightadv = fight.to_int();

	//adds the tracking pref
	if(havewpref == ''){
	set_property("currentweirdkill", 0);
	}

	if(havewcss == ''){
	write_ccs(to_buffer('consult consult/drwog.ash'), "weirdhouse");
	print("Created CCS for Weird", "green");
	} else {
	print("Already have CCS for Weird", "blue");
	}

	//sets combat
	set_property("battleAction", "custom combat script");

	if(get_property("customCombatScript") == "weirdhouse"){
	set_property("customCombatScript", "weirdhouse");
	}

	if(have_effect($effect[Beaten up]) > 0){
	abort("What went wrong?");
	}

	//makes sure you have the adventures
	if(fightadv > my_adventures()){
	abort("You don't have that many adventures left! You only have"+my_adventures());
	}

	//makes sure you have the combat items
	if(item_amount( stunItem1 ) < (2 * fightadv) ){
	print("You have: "+item_amount( stunItem1 )+" "+stunItem1.to_string()+"s");
	abort("You don't have enough "+stunItem1.to_string()+"s to stun for that many fights! Buy more (2x the number of fights you want)");
	}
	if(item_amount( stunItem2 ) < (2 * fightadv) ){
	print("You have: "+item_amount( stunItem2 )+" "+stunItem2.to_string()+"s");
	abort("You don't have enough "+stunItem2.to_string()+"s to stun for that many fights! Buy more (2x the number of fights you want)");
	}

	if(item_amount( preferredItem1 ) < (10 * fightadv) ){
	print("You have: "+item_amount( preferredItem1 )+" "+preferredItem1.to_string()+"s");
	print("You don't have enough "+preferredItem1.to_string()+"s to kill a combat only monster! Buy more, 20x the number of fights are doing is recommended","red");
	abort("Only 5 times is required to run the script");
	}


while(fightadv > 0){
	//adventure in weirdeaux
	adv1($location[The Mansion of Dr. Weirdeaux], -1, "");

	currentwkill = get_property("currentweirdkill").to_int();

	//increase the value of turns spent in weirdeaux
	newcurrentweirdkill=currentwkill+1;

	if(get_property("_lastCombatWon") != "false"){
	set_property("currentweirdkill", newcurrentweirdkill);
	}

	print("Weirdeaux Monster's killed: "+newcurrentweirdkill,"blue");	

	fightadv-=1;
	print("Fights left: "+fightadv,"green");
}

	set_property("customCombatScript", "default");

}
