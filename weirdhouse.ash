//Need to set the consult script
//need to set outfit

void main(string fight) {
	
int currentwkill;

int newcurrentweirdkill;
int fightadv;
fightadv = fight.to_int();

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

print("Weirdeaux Monster's killed: "+currentwkill,"blue");	

fightadv-=1;
print("Fights left: "+fightadv,"green");
}
}
