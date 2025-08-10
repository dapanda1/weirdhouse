//need to manual set outfit

void main(string fight) {
	
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
	set_property("customCombatScript", "weirdhouse");

	if(have_effect($effect[Beaten up]) > 0){
	abort("What went wrong?");
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
