boolean shouldRunAway = false;
boolean canUseWeapon = true;
boolean canUseSpell = true;
boolean canUseSkill = true;
boolean combatItemsBlocked = false;
boolean jellyBlock = false;
boolean cankill = true;

skill preferredSkill1 = $skill[curse of marinara];
skill preferredSkill2 = $skill[shadow noodles];
skill preferredSkill3 = $skill[utensil twist];
skill preferredSpell1 = $skill[utensil twist];
item preferredItem1 = $item[divine blowout];
item stunItem1 = $item[CSA obedience grenade];
item stunItem2 = $item[gas balloon];
item stunItem3 = $item[twisted piece of wire];

int fcombatitemdmg;
int cwk;
int cwkHP;
cwk = get_property("currentweirdkill").to_int();

//Global butt so can share.
int [int] b;
string [int] r;
r[1]="Rhinocerous";
r[2]="Spider";
r[3]="Fire Ant";
r[4]="Penguin";
r[5]="Skunk";
r[6]="Bat";
r[7]="Leech";
r[8]="Rattlesnake";
r[9]="Scorpion";
r[10]="Octopus";

//Global head so can share.
int [int] h;
string [int] f;
f[1]="Tiger";
f[2]="Cobra";
f[3]="Gorilla";
f[4]="Goat";
f[5]="Pufferfish";
f[6]="Giraffe";
f[7]="Frog";
f[8]="Alligator";
f[9]="Naked Mole Rat";
f[10]="Jellyfish";

//Globals so can share.
int [int] s;
string [int] t;
t[1]="Shark";
t[2]="Leopard";
t[3]="Bear";
t[4]="Bee";
t[5]="Snail";
t[6]="Cheetah";
t[7]="Hedgehog";
t[8]="Wolf";
t[9]="Elephant";

//cleanBlock and partsCounter stolen from/based upon code by Deadned (#1909053)
//in relay override, fight.ash.  Thank you.

string cleanBlock(string page) {
	matcher m;
	m=create_matcher("<p>.+</blockquote>",page);
	if (m.find()){
		page = replace_first(m,"<p></blockquote>");
	}
	return page;
}

void doPartsCounterbutt(string page) {
	//counts parts in image
	matcher mb = create_matcher("an_butt(\\d+)",page);
	while (mb.find()) {
		switch(to_int(group(mb,1))) {
			case 1:
				b[1]+=1;
				break;
			case 2:
				b[2]+=1;
				break;
			case 3:
				b[3]+=1;
				break;
			case 4:
				b[4]+=1;
				break;
			case 5:
				b[5]+=1;
				break;
			case 6:
				b[6]+=1;
				break;
			case 7:
				b[7]+=1;
				break;
			case 8:
				b[8]+=1;
				break;
			case 9:
				b[9]+=1;
				break;
			case 10:
				b[10]+=1;
				break;
			default:
			
		}
	}
}

void doPartsCounterhead(string page) {
	//counts parts in image
	matcher mf = create_matcher("an_head(\\d+)",page);
	while (mf.find()) {
		switch(to_int(group(mf,1))) {
			case 1:
				h[1]+=1;
				break;
			case 2:
				h[2]+=1;
				break;
			case 3:
				h[3]+=1;
				break;
			case 4:
				h[4]+=1;
				break;
			case 5:
				h[5]+=1;
				break;
			case 6:
				h[6]+=1;
				break;
			case 7:
				h[7]+=1;
				break;
			case 8:
				h[8]+=1;
				break;
			case 9:
				h[9]+=1;
				break;
			case 10:
				h[10]+=1;
				break;
			default:
			
		}
	}
}


void doPartsCounter(string page) {
	matcher m = create_matcher("an_seg(\\d+)", page);
	while (m.find()) {
		s[to_int(group(m, 1))] += 1;
	}
}

void setGlobalsFromPage(int round, string page) {
	//clear counters
	for i from 1 to 9 by 1 {
		s[i] = 0;
	}
	
	for x from 1 to 10 by 1 {
		b[x] = 0;
	}
	
	for y from 1 to 10 by 1 {
		h[y] = 0;
	}
	
	int fightadv;

	float combatdmgmod;
	float combatitemdmg;

	get_property("currentweirdkill");

	if(have_effect($effect[Mathematically Precise]) > 0){
	combatdmgmod+=.5;
	}

	if(have_skill($skill[Deft Hands]) == true){
	combatdmgmod+=.25;
	}

	if(have_equipped($item[V for Vivala mask]) == true){
	combatdmgmod+=.5;
	}

	if(have_equipped($item[Crimbuccaneer bombjacket]) == true){
	combatdmgmod+=1;
	}

	//Total Damage
	combatitemdmg=((my_buffedstat(my_primestat()) * combatdmgmod) + my_buffedstat(my_primestat()));

	//Weirdeaux debuff
	fcombatitemdmg = combatitemdmg*.9;
	
	//canUseSkill = !(contains_text(to_lower_case(page), "octopus"));
	//combatItemsBlocked = contains_text(to_lower_case(page), "frog");
	//jellyBlock = contains_text(to_lower_case(page), "jellyfish");
	//parse monster
	page = cleanBlock(page);
	doPartsCounter(page);
	
	canUseWeapon = s[4] == 0; //Bee
	canUseSpell = s[5] == 0; //snail
    
    //Weirdeaux Life
	cwkHP = (((cwk*7.5)+70)*(1.2**s[3]));
    
    //math for consult script (2 are used per round with funkslinging, so if you want to go 10 rounds, you need to put 20)
    if( (24 * fcombatitemdmg) < cwkHP ){
    cankill = false;
    }
    //cankill = s[3] <= 20;

    doPartsCounterbutt(page);
    
    canUseSkill = b[10] == 0; //octopus

    doPartsCounterhead(page);
    
    combatItemsBlocked = h[7] == 1; //frog
    jellyBlock = h[10] == 1; //jellyfish
    
	if((!canUseSkill && combatItemsBlocked) || (!canUseSkill && !cankill)){
	shouldRunAway = true;
	}

}

void doSomethingElse(int initround) {
	string result;
	if (initround < 2){
	print("shouldRunAway: "+to_string(shouldRunAway));
	print("jellyBlock: "+to_string(jellyBlock));
	print("combatItemsBlocked: "+to_string(combatItemsBlocked));
	print("canUseWeapon: "+to_string(canUseWeapon));
	print("canUseSpell: "+to_string(canUseSpell));
	print("canUseSkill: "+to_string(canUseSkill));
	print("cankillwitem: "+to_string(cankill));
	print("Bear Legs: " + s[3]);
	print("Health Estimate "+to_string(cwkHP));
	}
	//abort("I don\'t want you to spend turns mister!");
	if (initround >20){
	result = abort();		
	}
	if (!cankill && !canUseSkill && !combatItemsBlocked){
	print("1 instance of DB: "+to_int(fcombatitemdmg));
	//result = abort();
	result = runaway();	
	}
	if (initround < 2 && canUseSkill && !jellyBlock){
	result = use_skill(preferredSkill2);
	result = use_skill(preferredSkill1);	
	}
	if (initround < 2 && jellyBlock && canUseSkill){
	result = use_skill(preferredSkill2);
	result = use_skill(preferredSkill2);
	result = use_skill(preferredSkill2);
	result = use_skill(preferredSkill1);
	result = use_skill(preferredSkill1);
	}
	if(initround < 6 && !combatItemsBlocked){
	result = throw_items(stunItem1,stunItem2);	
	}
	if (canUseWeapon && canUseSkill) {
		result = use_skill(preferredSkill3);
		result = use_skill(preferredSkill3);
		result = attack();
	} else if (canUseWeapon) {
		result = attack();
	} else if (canUseSkill) {
		result = use_skill(preferredSkill3);
		result = use_skill(preferredSkill3);
		result = use_skill(preferredSkill3);
		result = use_skill(preferredSkill3);
		result = use_skill(preferredSkill3);
	} else if (!combatItemsBlocked && !canUseSkill && !canUseWeapon) {
		result = throw_items(preferredItem1,preferredItem1);
		result = throw_items(preferredItem1,preferredItem1);
		result = throw_items(preferredItem1,preferredItem1);
		result = throw_items(preferredItem1,preferredItem1);
		result = throw_items(preferredItem1,preferredItem1);
	} else {
		result = runaway();
	}

}
		
void main(int initround, monster foe, string page) {
	string result;
	setGlobalsFromPage(initround, page);
	//print("b[10] = " + b[10]);
	//print(page);
	doSomethingElse(initround);
}
