script "cc_aftercore.ash"
import <cc_ascend.ash>

#Prototypes
boolean cc_sloppySecondsDiner();
boolean cc_fingernail();
boolean cc_packOfSmokes();
boolean cc_goreBucket();
boolean cc_junglePuns();
boolean cc_jungleSandwich();
boolean cc_toxicMascot();
boolean cc_nastyBears();
boolean cc_toxicGlobules();
boolean cc_sexismReduction();
boolean cc_racismReduction();
boolean cc_lubeBarfMountain();
boolean cc_trashNet();
boolean cc_doWalford();
boolean cc_mtMolehill();
boolean cc_acquireKeycards();
boolean cc_dailyDungeon();
item cc_guildEpicWeapon();
boolean cc_guildUnlock();
boolean cc_guildClown();
boolean cc_nemesisCave();
boolean cc_nemesisIsland();
boolean cc_cheesePostCS();
boolean cc_cheesePostCS(int leave);
boolean cc_cheeseAftercore(int leave);
boolean cc_aftercore();
boolean cc_aftercore(int leave);
boolean cc_ascendIntoCS();
boolean cc_ascendIntoCS(class cl);
boolean cc_ascendIntoTwilight();
boolean cc_ascendIntoBond();
boolean cc_doCS();
boolean cc_customMafiaAddress();


#Definitons here
void cc_combatTest()
{
	string macro = "skill toss; repeat";
	visit_url("fight.php?action=macro&macrotext=" + url_encode(macro), true, true);
}

string simpleCombatFilter(int round, string opp, string text)
{
	#throw_item($item[Seal Tooth]);
	#return "item seal tooth";
	print("I've been called at on round: " + round, "green");
	#return url_encode("\"item seal tooth; repeat\"");
	return "\"item seal tooth; repeat\"";
}

boolean cc_dailyDungeon()
{
	item lastequip = equipped_item($slot[acc2]);
	equip($slot[acc2], $item[ring of detect boring doors]);
	while((get_property("_lastDailyDungeonRoom").to_int() != 15) && (my_adventures() > 0) && (item_amount($item[eleven-foot pole]) > 0) && (item_amount($item[pick-o-matic lockpicks]) > 0))
	{
		ccAdv(1, $location[The Daily Dungeon]);
	}
	equip($slot[acc2], lastequip);
	return true;
}

boolean cc_sloppySecondsDiner()
{
	if(get_property("_sloppyDinerBeachBucks").to_int() >= 4)
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}

	while((my_adventures() > 0) && (get_property("_sloppyDinerBeachBucks").to_int() < 4))
	{
		ccAdv(1, $location[Sloppy Seconds Diner]);
	}
	return true;
}

boolean cc_fingernail()
{
	if(get_property("fingernailsClipped").to_int() >= 23)
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	if(item_amount($item[Military-Grade Fingernail Clippers]) == 0)
	{
		return false;
	}
	while((get_property("fingernailsClipped").to_int() < 23) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The Mansion of Dr. Weirdeaux]);
	}
	return true;
}

boolean cc_packOfSmokes()
{
	if(item_amount($item[pack of smokes]) >= 10)
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	while((item_amount($item[pack of smokes]) < 10) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The Deep Dark Jungle]);
	}
	return true;
}

boolean cc_goreBucket()
{
	if(!possessEquipment($item[Gore Bucket]))
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("goreCollected").to_int() >= 100)
	{
		return false;
	}
	if(equipped_item($slot[Off-Hand]) != $item[Gore Bucket])
	{
		equip($item[Gore Bucket]);
	}
	while((get_property("goreCollected").to_int() < 100) && (my_adventures() > 0))
	{
		if(!ccAdv(1, $location[The Secret Government Laboratory]))
		{
			abort("Could not adventure in the lab, aborting");
		}
	}
	return true;
}

boolean cc_junglePuns()
{
	if(!possessEquipment($item[Encrypted Micro-Cassette Recorder]))
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("junglePuns").to_int() >= 11)
	{
		return false;
	}
	if(equipped_item($slot[Off-Hand]) != $item[Encrypted Micro-Cassette Recorder])
	{
		equip($item[Encrypted Micro-Cassette Recorder]);
	}
	while((get_property("junglePuns").to_int() < 11) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The Deep Dark Jungle]);
	}
	return true;
}

boolean cc_sexismReduction()
{
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("dinseySocialJusticeIProgress").to_int() >= 15)
	{
		return false;
	}
	while((get_property("dinseySocialJusticeIProgress").to_int() < 15) && (my_adventures() > 0))
	{
		ccAdv(1, $location[Pirates of the Garbage Barges]);
	}
	return true;
}

boolean cc_racismReduction()
{
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("dinseySocialJusticeIIProgress").to_int() >= 15)
	{
		return false;
	}
	while((get_property("dinseySocialJusticeIIProgress").to_int() < 15) && (my_adventures() > 0))
	{
		ccAdv(1, $location[Uncle Gator\'s Country Fun-Time Liquid Waste Sluice]);
	}
	return true;
}


boolean cc_nastyBears()
{
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("dinseyNastyBearsDefeated").to_int() >= 8)
	{
		return false;
	}
	while((get_property("dinseyNastyBearsDefeated").to_int() < 8) && (my_adventures() > 0))
	{
		ccAdv(1, $location[Uncle Gator\'s Country Fun-Time Liquid Waste Sluice]);
	}
	return true;
}



boolean cc_toxicGlobules()
{
	if(my_adventures() == 0)
	{
		return false;
	}
	if(item_amount($item[Toxic Globule]) >= 20)
	{
		return false;
	}
	while((item_amount($item[Toxic Globule]) < 20) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The Toxic Teacups]);
	}
	return true;
}



boolean cc_toxicMascot()
{
	if(!possessEquipment($item[Dinsey Mascot Mask]))
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("dinseyFunProgress").to_int() >= 15)
	{
		return false;
	}
	if(equipped_item($slot[Hat]) != $item[Dinsey Mascot Mask])
	{
		equip($item[Dinsey Mascot Mask]);
	}
	while((get_property("dinseyFunProgress").to_int() < 15) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The Toxic Teacups]);
	}
	return true;
}

boolean cc_trashNet()
{
	if(!possessEquipment($item[Trash Net]))
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	if(get_property("dinseyFilthLevel").to_int() <= 0)
	{
		return false;
	}
	if(equipped_item($slot[Weapon]) != $item[Trash Net])
	{
		equip($item[Trash Net]);
	}
	while((get_property("dinseyFilthLevel").to_int() > 0) && (my_adventures() > 0))
	{
		ccAdv(1, $location[Pirates of the Garbage Barges]);
	}
	return true;
}

boolean cc_lubeBarfMountain()
{
	if(!possessEquipment($item[lube-shoes]))
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	if(equipped_item($slot[acc2]) != $item[lube-shoes])
	{
		equip($slot[acc2], $item[lube-shoes]);
	}
	while(my_adventures() > 0)
	{
		if(contains_text(get_property("lastEncounter"), "A Rollercoaster Baby Baby"))
		{
			return true;
		}
		ccAdv(1, $location[Barf Mountain]);
	}
	return true;
}

boolean cc_acquireKeycards()
{
	while(my_adventures() > 0)
	{
		if(item_amount($item[Keycard &delta;]) == 0)
		{
			ccAdv(1, $location[Uncle Gator\'s Country Fun-Time Liquid Waste Sluice]);
		}
		else if(item_amount($item[Keycard &alpha;]) == 0)
		{
			ccAdv(1, $location[Barf Mountain]);
		}
		else if(item_amount($item[Keycard &beta;]) == 0)
		{
			ccAdv(1, $location[Pirates of the Garbage Barges]);
		}
		else if(item_amount($item[Keycard &gamma;]) == 0)
		{
			ccAdv(1, $location[The Toxic Teacups]);
		}
		else
		{
			return false;
		}
	}
	return false;
}

boolean cc_jungleSandwich()
{
	if(item_amount($item[Project T. L. B.]) != 0)
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	while((item_amount($item[Project T. L. B.]) == 0) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The Deep Dark Jungle]);
	}
	return true;
}

boolean cc_mtMolehill()
{
	if(have_effect($effect[Shape of...Mole!]) == 0)
	{
		return false;
	}
	if(my_adventures() == 0)
	{
		return false;
	}
	while((have_effect($effect[Shape of...Mole!]) > 0) && (my_adventures() > 0))
	{
		ccAdv(1, $location[Mt. Molehill]);
	}
	return true;
}

boolean cc_doWalford()
{
	if(!get_property("_walfordQuestStartedToday").to_boolean())
	{
		if(!elementalPlanes_takeJob($element[cold]))
		{
			return false;
		}
	}

	if(get_property("walfordBucketProgress").to_int() >= 100)
	{
		return false;
	}

	if((item_amount($item[Fishy Pipe]) > 0) && !get_property("_fishyPipeUsed").to_boolean())
	{
		use(1, $item[Fishy Pipe]);
	}
	if((item_amount($item[Bag O\' Tricks]) > 0) && !get_property("_bagOTricksUsed").to_boolean())
	{
		use(1, $item[Bag O\' Tricks]);
	}
	getDiscoStyle(7);

	if(get_property("cc_dinseyGarbageMoney").to_int() < my_daycount())
	{
		set_property("cc_dinseyGarbageMoney", my_daycount());
		visit_url("place.php?whichplace=airport_stench&action=airport3_tunnels");
		visit_url("choice.php?pwd=&whichchoice=1067&option=6",true);
		visit_url("main.php");
	}

	if((item_amount($item[Platinum Yendorian Express Card]) > 0) && !get_property("expressCardUsed").to_boolean())
	{
		use(1, $item[Platinum Yendorian Express Card]);
	}


	if(get_property("_hipsterAdv").to_int() <= 2)
	{
		handleFamiliar($familiar[Artistic Goth Kid]);
		if(equipped_item($slot[Familiar]) != $item[Das Boot])
		{
			equip($slot[Familiar], $item[Das Boot]);
		}
	}
	else
	{
		handleFamiliar($familiar[Grouper Groupie]);
		if((equipped_item($slot[Familiar]) != $item[Snow Suit]) && (item_amount($item[Snow Suit]) > 0))
		{
			equip($slot[Familiar], $item[Snow Suit]);
		}
	}

	if(equipped_item($slot[Hat]) != $item[The Crown of Ed the Undying])
	{
		equip($item[The Crown of Ed the Undying]);
		adjustEdHat("fish");
	}
	if(equipped_item($slot[Back]) != $item[Camp Scout Backpack])
	{
		equip($item[Camp Scout Backpack]);
	}
	if((equipped_item($slot[Weapon]) != $item[Garbage Sticker]) && can_equip($item[Garbage Sticker]))
	{
		equip($item[Garbage Sticker]);
	}
	if(equipped_item($slot[Pants]) != $item[Pantsgiving])
	{
		equip($item[Pantsgiving]);
	}
	if(equipped_item($slot[Shirt]) != $item[Sneaky Pete\'s Leather Jacket])
	{
		if(item_amount($item[Sneaky Pete\'s Leather Jacket]) > 0)
		{
			equip($item[Sneaky Pete\'s Leather Jacket]);
		}
		else if(item_amount($item[Sneaky Pete\'s Leather Jacket (Collar Popped)]) > 0)
		{
			equip($item[Sneaky Pete\'s Leather Jacket (Collar Popped)]);
		}
	}
	if((equipped_item($slot[acc1]) != $item[Space Trip Safety Headphones]) && can_equip($item[Space Trip Safety Headphones]))
	{
		equip($slot[acc1], $item[Space Trip Safety Headphones]);
	}
	if(equipped_item($slot[acc2]) != $item[Mayfly Bait Necklace])
	{
		equip($slot[acc2], $item[Mayfly Bait Necklace]);
	}
	if((equipped_item($slot[acc3]) != $item[Mr. Cheeng\'s Spectacles]) && can_equip($item[Mr. Cheeng\'s Spectacles]))
	{
		equip($slot[acc3], $item[Mr. Cheeng\'s Spectacles]);
	}

	if(equipped_item($slot[Off-Hand]) != $item[Walford\'s Bucket])
	{
		equip($item[Walford\'s Bucket]);
	}
	while((get_property("walfordBucketProgress").to_int() < 100) && (my_adventures() > 0))
	{
		if(!ccAdv(1, $location[The Ice Hole]))
		{
			abort("Could not adventure in the Ice Hole, aborting");
		}
		if(!didWePlantHere($location[The Ice Hole]) && florist_available() && (my_location() == $location[The Ice Hole]))
		{
			cli_execute("florist plant snori");
			cli_execute("florist plant kelptomaniac");
			cli_execute("florist plant up sea daisy");
		}

	}

	if(get_property("walfordBucketProgress").to_int() >= 100)
	{
		visit_url("place.php?whichplace=airport_cold&action=glac_walrus");
		visit_url("choice.php?pwd=&whichchoice=1114&option=1",true);
		return true;
	}
	return false;
}


item cc_guildEpicWeapon()
{
	item toMake = $item[none];
	switch(my_class())
	{
	case $class[Turtle Tamer]:			toMake = $item[Chelonian Morningstar];					break;
	case $class[Seal Clubber]:			toMake = $item[Hammer of Smiting];			break;
	case $class[Pastamancer]:			toMake = $item[Greek Pasta Spoon Of Peril];			break;
	case $class[Sauceror]:				toMake = $item[17-Alarm Saucepan];			break;
	case $class[Accordion Thief]:		toMake = $item[Squeezebox Of The Ages];					break;
	case $class[Disco Bandit]:			toMake = $item[Shagadelic Disco Banjo];					break;
	}
	return toMake;
}

boolean cc_guildUnlock()
{
	if(get_property("lastGuildStoreOpen").to_int() >= my_ascensions())
	{
		return false;
	}
	if(my_adventures() < 6)
	{
		return false;
	}

	switch(my_class())
	{
	case $class[Turtle Tamer]:
	case $class[Seal Clubber]:
		visit_url("guild.php?place=challenge");
		while((item_amount($item[11-inch Knob Sausage]) == 0) && (my_adventures() > 0))
		{
			ccAdv(1, $location[The Outskirts of Cobb\'s Knob]);
		}
		visit_url("guild.php?place=challenge");
		return true;
	case $class[Pastamancer]:
	case $class[Sauceror]:
		break;
	case $class[Accordion Thief]:
	case $class[Disco Bandit]:
		break;
	default:
		break;
	}
	return false;
}

boolean cc_guildClown()
{
	if(get_property("lastGuildStoreOpen").to_int() < my_ascensions())
	{
		return false;
	}

	if(!possessEquipment($item[Clownskin Buckler]))
	{
		pullXWhenHaveY($item[Clownskin Buckler], 1, 0);
	}
	if(!possessEquipment($item[Clownskin Harness]))
	{
		pullXWhenHaveY($item[Clownskin Harness], 1, 0);
	}
	equip($item[Clownskin Buckler]);
	equip($item[Clownskin Harness]);


	item toGet = $item[none];
	switch(my_class())
	{
	case $class[Turtle Tamer]:			toGet = $item[Turtle Chain];					break;
	case $class[Seal Clubber]:			toGet = $item[Distilled Seal Blood];			break;
	case $class[Pastamancer]:			toGet = $item[High-Octane Olive Oil];			break;
	case $class[Sauceror]:				toGet = $item[Peppercorns of Power];			break;
	case $class[Accordion Thief]:		toGet = $item[Golden Reeds];					break;
	case $class[Disco Bandit]:			toGet = $item[Vial of Mojo];					break;
	}
	if(toGet == $item[none])
	{
		return false;
	}

	visit_url("guild.php?place=scg");
	visit_url("guild.php?place=scg");
	while((item_amount(toGet) == 0) && (my_adventures() > 0))
	{
		ccAdv(1, $location[The \"Fun\" House]);
	}

	item toMake = cc_guildEpicWeapon();
	if(toMake == $item[none])
	{
		abort("Somehow started the guild Clown sequence but we have nothing to make.");
		return false;
	}
	cli_execute("make " + toMake);
	visit_url("guild.php?place=scg");
	equipBaseline();
	return true;
}

boolean cc_nemesisCave()
{
	if(get_property("lastGuildStoreOpen").to_int() < my_ascensions())
	{
		return false;
	}
	if(get_property("questG04Nemesis") != "step4")
	{
		return false;
	}
	if(!possessEquipment(cc_guildEpicWeapon()))
	{
		return false;
	}
	equipBaseline();
	switch(my_class())
	{
	case $class[Turtle Tamer]:
		pullXWhenHaveY($item[Viking Helmet], 1, 0);
		pullXWhenHaveY($item[Insanely Spicy Bean Burrito], 1, 0);
		pullXWhenHaveY($item[Clownskin Buckler], 1, 0);
#		abort("The door handling does not work so don't do it.");
		visit_url("cave.php?pwd=&action=dodoor1&whichitem=" + to_int($item[Viking Helmet]), true);
		visit_url("cave.php?pwd=&action=dodoor2&whichitem=" + to_int($item[Insanely Spicy Bean Burrito]), true);
		visit_url("cave.php?pwd=&action=dodoor3&whichitem=" + to_int($item[Clownskin Buckler]), true);
		break;
	case $class[Seal Clubber]:
		pullXWhenHaveY($item[Viking Helmet], 1, 0);
		pullXWhenHaveY($item[Insanely Spicy Bean Burrito], 1, 0);
		pullXWhenHaveY($item[Clown Whip], 1, 0);
#		abort("The door handling does not work so don't do it.");
		visit_url("cave.php?pwd=&action=dodoor1&whichitem=" + to_int($item[Viking Helmet]), true);
		visit_url("cave.php?pwd=&action=dodoor2&whichitem=" + to_int($item[Insanely Spicy Bean Burrito]), true);
		visit_url("cave.php?pwd=&action=dodoor3&whichitem=" + to_int($item[Clown Whip]), true);
		break;
	case $class[Pastamancer]:
		pullXWhenHaveY($item[Stalk of Asparagus], 1, 0);
		pullXWhenHaveY($item[Insanely Spicy Enchanted Bean Burrito], 1, 0);
		pullXWhenHaveY($item[Boring Spaghetti], 1, 0);
#		abort("The door handling does not work so don't do it.");
		visit_url("cave.php?pwd=&action=dodoor1&whichitem=" + to_int($item[Stalk of Asparagus]), true);
		visit_url("cave.php?pwd=&action=dodoor2&whichitem=" + to_int($item[Insanely Spicy Enchanted Bean Burrito]), true);
		visit_url("cave.php?pwd=&action=dodoor3&whichitem=" + to_int($item[Boring Spaghetti]), true);
		break;
	case $class[Sauceror]:
	case $class[Accordion Thief]:
	case $class[Disco Bandit]:
		return false;
	}

	while(my_adventures() > 0)
	{
		int count = 0;
		count = count + item_amount($item[A Creased Paper Strip]);
		count = count + item_amount($item[A Crinkled Paper Strip]);
		count = count + item_amount($item[A Crumpled Paper Strip]);
		count = count + item_amount($item[A Folded Paper Strip]);
		count = count + item_amount($item[A Rumpled Paper Strip]);
		count = count + item_amount($item[A Ripped Paper Strip]);
		count = count + item_amount($item[A Torn Paper Strip]);
		count = count + item_amount($item[A Ragged Paper Strip]);
		if(count >= 8)
		{
			break;
		}
#		if(!ccAdv(1, $location[Nemesis Cave]))
#		{
			abort("Can not access area, aborting.");
#		}
	}
	equip(cc_guildEpicWeapon());
	visit_url("cave.php?pwd=action=door4");
	abort("Currently, must handle password manually, big sad");
#	ccAdv(1, $location[Noob Cave]);

	visit_url("guild.php?place=scg");
	equipBaseline();
	return true;
}


boolean cc_nemesisIsland()
{
	if(get_property("lastGuildStoreOpen").to_int() < my_ascensions())
	{
		return false;
	}
	if(get_property("questG04Nemesis") != "step14")
	{
		return false;
	}
	if(!possessEquipment(cc_guildEpicWeapon()))
	{
		return false;
	}
//	equipBaseline();

	location nemesisArea = $location[none];

	switch(my_class())
	{
	case $class[Turtle Tamer]:
		return false;
	case $class[Seal Clubber]:
		nemesisArea = $location[The Broodling Grounds];
		break;
	case $class[Pastamancer]:
	case $class[Sauceror]:
	case $class[Accordion Thief]:
	case $class[Disco Bandit]:
		return false;
	}

	while(my_adventures() > 0)
	{
		int count = 0;
		count = count + min(item_amount($item[Hellseal Hide]),6);
		count = count + min(item_amount($item[Hellseal Brain]),6);
		count = count + min(item_amount($item[Hellseal Sinew]),6);
		if(count >= 18)
		{
			break;
		}
		if(!ccAdv(1, nemesisArea))
		{
			abort("Can not access area, aborting.");
		}
	}
	return true;
}

boolean cc_ascendIntoBond()
{
	if(!get_property("_workshedItemUsed").to_boolean())
	{
		if(!(cc_get_campground() contains $item[Asdon Martin Keyfob]))
		{
			if(item_amount($item[Asdon Martin Keyfob]) > 0)
			{
				use(1, $item[Asdon Martin Keyfob]);
			}
		}
	}

	if(my_inebriety() <= inebriety_limit())
	{
		return false;
	}

	declineTrades();

	string temp = visit_url("ascend.php?pwd=&confirm=on&confirm2=on&action=ascend&submit=Ascend", true);
	if(contains_text(temp, "You may not enter the Astral Gash again until tomorrow."))
	{
		print("Could not ascend, refractory period required.", "red");
		return false;
	}
	temp = visit_url("afterlife.php?action=pearlygates");

	string permery_text = visit_url("afterlife.php?place=permery");
	if(!permery_text.contains_text("It looks like you've already got all of the skills from your last life marked permanent."))
	{
		abort("perm a skill");
		return false;
	}

	temp = visit_url("afterlife.php?action=buydeli&whichitem=" + to_int($item[Carton Of Astral Energy Drinks]), true);

	temp = visit_url("afterlife.php?place=armory");
	if(contains_text(temp, "astral pet sweater"))
	{
		temp = visit_url("afterlife.php?action=buyarmory&whichitem=5040", true);
	}
	else
	{
		temp = visit_url("afterlife.php?action=buyarmory&whichitem=5037", true);
	}
	temp = visit_url("afterlife.php?place=reincarnate");
	int gender = 1;
	if(contains_text(temp, "option selected value=2>Female"))
	{
		gender = 2;
	}
	temp = visit_url("afterlife.php?action=ascend&asctype=2&whichclass=" + to_int($class[Seal Clubber]) +"&gender=" + gender + "&whichpath=30&whichsign=3", true);
	temp = visit_url("afterlife.php?action=ascend&confirmascend=1&asctype=2&whichclass=" + to_int($class[Seal Clubber]) + "&gender=" + gender + "&whichpath=30&whichsign=3&noskillsok=1&lamesignok=1&nopetok=1", true);


	temp = visit_url("choice.php?pwd=&whichchoice=1257&option=1");
	temp = visit_url("choice.php?pwd=&whichchoice=1258&option=2");
	temp = visit_url("main.php");
	temp = visit_url("api.php?what=status&for=4", false);

	return true;
}


boolean cc_ascendIntoCS()
{
	return cc_ascendIntoCS($class[Sauceror]);
}

boolean cc_ascendIntoCS(class cl)
{
	if(my_inebriety() <= inebriety_limit())
	{
		return false;
	}
	if(my_adventures() >= 3)
	{
		return false;
	}

	declineTrades();

	string temp = visit_url("ascend.php?pwd=&confirm=on&confirm2=on&action=ascend&submit=Ascend", true);
	temp = visit_url("afterlife.php?action=pearlygates");

	string permery_text = visit_url("afterlife.php?place=permery");
	if(!permery_text.contains_text("It looks like you've already got all of the skills from your last life marked permanent."))
	{
		abort("perm a skill");
		return false;
	}

	temp = visit_url("afterlife.php?action=buydeli&whichitem=5046", true);

	temp = visit_url("afterlife.php?place=armory");
	if(contains_text(temp, "astral pet sweater"))
	{
		temp = visit_url("afterlife.php?action=buyarmory&whichitem=5040", true);
	}
	else
	{
		temp = visit_url("afterlife.php?action=buyarmory&whichitem=5037", true);
	}
	temp = visit_url("afterlife.php?place=reincarnate");
	int gender = 1;
	if(contains_text(temp, "option selected value=2>Female"))
	{
		gender = 2;
	}
	temp = visit_url("afterlife.php?action=ascend&asctype=3&whichclass=4&gender=" + gender + "&whichpath=25&whichsign=2", true);

	int classID = 4;
	int sign = 2;
	switch(cl)
	{
	case $class[Seal Clubber]:		classID = 1;		sign = 1;		break;
	case $class[Turtle Tamer]:		classID = 2;		sign = 1;		break;
	case $class[Pastamancer]:		classID = 3;		sign = 2;		break;
	case $class[Sauceror]:			classID = 4;		sign = 2;		break;
	case $class[Disco Bandit]:		classID = 5;		sign = 3;		break;
	case $class[Accordion Thief]:	classID = 6;		sign = 3;		break;
	default:
		abort("Invalid class");
	}

	temp = visit_url("afterlife.php?action=ascend&confirmascend=1&asctype=3&whichclass=" + classID + "&gender=" + gender + "&whichpath=25&whichsign=" + sign + "&noskillsok=1", true);

	return true;
}


boolean cc_ascendIntoTwilight()
{
	if(my_inebriety() <= inebriety_limit())
	{
		return false;
	}
	if(my_adventures() >= 3)
	{
		return false;
	}

	declineTrades();

	string temp = visit_url("ascend.php?pwd=&confirm=on&confirm2=on&action=ascend&submit=Ascend", true);
	temp = visit_url("afterlife.php?action=pearlygates");

	string permery_text = visit_url("afterlife.php?place=permery");
	if(!permery_text.contains_text("It looks like you've already got all of the skills from your last life marked permanent."))
	{
		abort("perm a skill");
		return false;
	}

	temp = visit_url("afterlife.php?action=buydeli&whichitem=5046", true);

	temp = visit_url("afterlife.php?place=armory");
	temp = visit_url("afterlife.php?action=buyarmory&whichitem=5041", true);

	temp = visit_url("afterlife.php?place=reincarnate");
	int gender = 1;
	if(contains_text(temp, "option selected value=2>Female"))
	{
		gender = 2;
	}

	temp = visit_url("afterlife.php?action=ascend&asctype=2&whichclass=1&gender=" + gender + "&whichpath=35&whichsign=8", true);

	int classID = 24;
	int sign = 8;

	temp = visit_url("afterlife.php?action=ascend&confirmascend=1&asctype=2&whichclass=" + classID + "&gender=" + gender + "&whichpath=35&whichsign=" + sign + "&noskillsok=1", true);

	return true;
}

boolean cc_aftercore()
{
	return cc_cheeseAftercore(0);
}
boolean cc_aftercore(int leave)
{
	return cc_cheeseAftercore(leave);
}

boolean cc_cheeseAftercore(int leave)
{
	return cc_cheesePostCS(leave);
}

boolean cc_cheesePostCS()
{
	return cc_cheesePostCS(0);
}

boolean cc_afterSpacegate()
{
	//We should probably do this stuff later so we can better utilize our meat buffs, if we have any...
	if((get_property("cc_digitizePlanet") != "") && (get_property("_spacegateCoordinates") == ""))
	{
		string temp = visit_url("place.php?whichplace=spacegate&action=sg_Terminal");
		temp = visit_url("choice.php?pwd=&whichchoice=1235&option=2&word=" + get_property("cc_digitizePlanet"));
		ccAdv($location[Through The Spacegate]);
	}

	if(get_property("_spacegateTurnsLeft").to_int() == 0)
	{
		return false;
	}

	string[int] equips = split_string(get_property("_spacegateHazards"), "\\|");
	for(int i=0; i<count(equips); i++)
	{
		switch(equips[i])
		{
		case "toxic atmosphere":	equip($slot[hat], $item[Filter Helmet]);			break;
		case "high gravity":		equip($slot[pants], $item[Exo-Servo Leg Braces]);	break;
		case "irradiated":			equip($slot[back], $item[Rad Cloak]);				break;
		case "magnetic storms":		equip($slot[acc1], $item[Gate Transceiver]);		break;
		case "high winds":			equip($slot[acc2], $item[High-Friction Boots]);		break;
		case "hot solar flares":
		case "frigid zones":
		case "scary noises":
		case "nasty gasses":
		case "lewd rock formations":
			print("Elemental hazard: " + equips[i]);
			break;
		default:					abort("Error parsing hazard '" + equips[i] + "'");	break;
		}
	}

	# I suppose hazards tells us what we need to equip?
	while(get_property("_spacegateTurnsLeft").to_int() > 0)
	{
		if(isOverdueDigitize())
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			ccAdv($location[The Ice Hotel]);
		}

		if(have_effect($effect[Song Of Sauce]) == 0)
		{
			equip($slot[hat], $item[Nurse\'s Hat]);
			equip($slot[shirt], $item[Sea Salt Scrubs]);
			equip($slot[off-hand], $item[HOA Regulation Book]);
			equip($slot[pants], $item[Greatest American Pants]);
			equip($slot[acc3], $item[Space Trip Safety Headphones]);
			doRest();
			doRest();
			doRest();
			buffMaintain($effect[Astral Shell], 10, 2, 20);
			buffMaintain($effect[Elemental Saucesphere], 10, 2, 20);
			buffMaintain($effect[Carol Of The Hells], 10, 2, 20);
			buffMaintain($effect[Song Of Sauce], 10, 2, 20);
			use_familiar($familiar[Trick-Or-Treating Tot]);
			take_storage(1, $item[Li\'l Candy Corn Costume]);
			equip($slot[familiar], $item[Li\'l Candy Corn Costume]);

			cli_execute("gap structure");
			cli_execute("gap structure");
			cli_execute("gap vision");
			cli_execute("gap speed");
			cli_execute("gap skill");
			use(1, $item[Circle Drum]);
		}

		set_property("cc_combatDirective", "start;skill saucegeyser");
		if(!ccAdv($location[Through The Spacegate]))
		{
			set_property("cc_combatDirective", "");
			string temp = visit_url("place.php?whichplace=spacegate&action=sg_Terminal");
			break;
		}
		set_property("cc_combatDirective", "");
		if(have_effect($effect[Beaten Up]) > 0)
		{
			print("Got beaten up at the spacegate");
		}
	}
	return true;
}

boolean cc_afterGingercity()
{
	if(available_amount($item[Peppermint Parasol]) > 0)
	{
		if(get_property("gingerbreadCityAvailable").to_boolean() && (get_property("_gingerbreadCityTurns").to_int() < 5))
		{
			if(item_amount($item[Peppermint Parasol]) == 0)
			{
				if(storage_amount($item[Peppermint Parasol]) > 0)
				{
					take_closet(1, $item[Peppermint Parasol]);
				}
				else
				{
					take_storage(1, $item[Peppermint Parasol]);
				}
			}

			if(!get_property("_gingerbreadClockAdvanced").to_boolean())
			{
				string old = get_property("choiceAdventure1215");
				set_property("choiceAdventure1215", 1);
				ccAdv($location[Gingerbread Civic Center]);
				set_property("choiceAdventure1215", old);
			}
			while(get_property("_gingerbreadCityTurns").to_int() < 4)
			{
				set_property("cc_combatDirective", "start;item peppermint parasol");
				ccAdV($location[Gingerbread Upscale Retail District]);
			}
			if(get_property("_gingerbreadCityTurns").to_int() == 4)
			{
				string old = get_property("choiceAdventure1204");
				set_property("choiceAdventure1204", 1);
				ccAdv($location[Gingerbread Train Station]);
				set_property("choiceAdventure1204", old);
			}

			put_closet(item_amount($item[Peppermint Parasol]), $item[Peppermint Parasol]);
			return true;
		}
	}
	return false;
}

monster cc_specialAftercore(familiar toFam)
{
	boolean inSpecialAftercore = (my_daycount() == 2) && isOverdueDigitize();
	inSpecialAftercore |= get_property("_cc_specialAftercore").to_boolean();
	inSpecialAftercore |= (my_daycount() == 1) && get_property("kingLiberated").to_boolean() && (get_property("_sourceTerminalDigitizeUses").to_int() < 3);
	inSpecialAftercore |= (my_adventures() > 300);
	inSpecialAftercore |= (fullness_left() >= 15) && (inebriety_left() >= 14) && (spleen_left() >= 15);

	if(get_property("_chateauMonsterFought").to_boolean() && get_property("_photocopyUsed").to_boolean())
	{
		inSpecialAftercore = false;
	}
	if(inebriety_left() < 0)
	{
		inSpecialAftercore = false;
	}
	if(my_adventures() < 15)
	{
		inSpecialAftercore = false;
	}

	monster target = $monster[none];
	if(inSpecialAftercore)
	{
		cli_execute("/aa none");
		set_property("_cc_specialAftercore", false);

		cc_sourceTerminalEducate($skill[Digitize], $skill[Turbo]);
		if(have_familiar($familiar[Golden Monkey]))
		{
			bjornify_familiar($familiar[Golden Monkey]);
		}
		else if(have_familiar($familiar[Garbage Fire]))
		{
			bjornify_familiar($familiar[Garbage Fire]);
		}

		if(item_amount($item[Pantsgiving]) > 0)
		{
			equip($slot[pants], $item[Pantsgiving]);
		}

		if(item_amount($item[Half A Purse]) > 0)
		{
			equip($slot[off-hand], $item[Half A Purse]);
		}
		else if(item_amount($item[Kol Con 13 Snowglobe]) > 0)
		{
			equip($slot[off-hand], $item[Kol Con 13 Snowglobe]);
		}

		if(item_amount($item[LOV Earrings]) > 0)
		{
			equip($slot[acc1], $item[LOV Earrings]);
		}

		if(isOverdueDigitize())
		{
			ccAdv($location[The Ice Hotel]);
			if(get_property("_sourceTerminalDigitizeMonsterCount").to_int() != 2)
			{
				print("Did digitize tracking get mixed up?", "red");
			}
		}
		if(isOverdueArrow())
		{
			ccAdv($location[The Ice Hotel]);
			if(get_property("_romanticFightsLeft").to_int() == 2)
			{
				print("Probably got confused about an arrow fight, adjusting", "red");
				set_property("_romanticFightsLeft", 1);
			}
		}

		float baseMeat = 500;
		monster target = $monster[Cheerless Mime Executive];
		if(!get_property("_photocopyUsed").to_boolean())
		{
			target = $monster[Knob Goblin Embezzler];
		}
		else
		{
			if(get_property("chateauMonster") != target)
			{
				if(get_property("chateauMonster") == $monster[Knob Goblin Embezzler])
				{
					target = $monster[Knob Goblin Embezzler];
				}
				else
				{
					target = $monster[none];
				}
			}
		}

		switch(target)
		{
		case $monster[Cheerless Mime Executive]:		baseMeat = 500;			break;
		case $monster[Knob Goblin Embezzler]:			baseMeat = 1000;		break;
		case $monster[none]:							baseMeat = 0;			break;
		}


		if(target == $monster[Cheerless Mime Executive])
		{
			if(item_amount($item[Cheer Extractor]) > 0)
			{
				equip($slot[weapon], $item[Cheer Extractor]);
			}
			if(item_amount($item[Mime Pocket Probe]) > 0)
			{
				equip($slot[off-hand], $item[Mime Pocket Probe]);
			}
		}

		//TODO: Handle Meat Buffs
		//baseMeat


		if((item_amount($item[License To Chill]) > 0) && !get_property("_licenseToChillUsed").to_boolean())
		{
			use(1, $item[License To Chill]);
			int count = 0;
			while((my_mp() > 1000) && (count < 10))
			{
				count++;
				cli_execute("postcheese");
			}
		}
		if((item_amount($item[Platinum Yendorian Express Card]) > 0) && !get_property("expressCardUsed").to_boolean())
		{
			use(1, $item[Platinum Yendorian Express Card]);
			int count = 0;
			while((my_mp() > 1000) && (count < 10))
			{
				count++;
				cli_execute("postcheese");
			}
		}

		if(my_mp() > 1000)
		{
			abort("Ugh, my MP is still here");
		}

		if((get_property("chateauMonster") == target) && !get_property("_chateauMonsterFought").to_boolean() && chateaumantegna_available())
		{
			if(get_property("_badlyRomanticArrows").to_int() == 0)
			{
				use_familiar($familiar[Reanimated Reanimator]);
				set_property("cc_combatDirective", "start;skill curse of weaksauce;skill digitize; skill wink at; item rain-doh black box, spooky putty sheet; skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
			}
			else
			{
				set_property("cc_combatDirective", "start;skill curse of weaksauce;skill digitize; item rain-doh black box, spooky putty sheet; skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
			}
			chateaumantegna_usePainting("");
		}
		else if(!get_property("_photocopyUsed").to_boolean())
		{
			if(get_property("_badlyRomanticArrows").to_int() == 0)
			{
				use_familiar($familiar[Reanimated Reanimator]);
				set_property("cc_combatDirective", "start;skill digitize; skill wink at; item rain-doh black box, spooky putty sheet; skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
			}
			else
			{
				set_property("cc_combatDirective", "start;skill curse of weaksauce;skill digitize; item rain-doh black box, spooky putty sheet; skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
			}
			handleFaxMonster(target, "");
			if(!get_property("_photocopyUsed").to_boolean())
			{
				abort("Ugh, photocopy not used because mafia did not update our clan state and refuses to do so...");
			}
		}
		use_familiar(toFam);
		//On day 1, we can not really plant here but does it matter?
		ccAdv(1, $location[Barf Mountain]);
		if(!didWePlantHere($location[Barf Mountain]) && florist_available() && (my_location() == $location[Barf Mountain]))
		{
			cli_execute("florist plant stealing magnolia");
			cli_execute("florist plant pitcher plant");
			cli_execute("florist plant aloe guv'nor");
		}

		if(get_property("_tempRelayCounters") != "")
		{
			setAdvPHPFlag();
		}

		while(item_amount($item[Rain-Doh Box Full Of Monster]) > 0)
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			handleCopiedMonster($item[Rain-Doh Box Full Of Monster]);
		}
		while(item_amount($item[Spooky Putty Monster]) > 0)
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			handleCopiedMonster($item[Spooky Putty Monster]);
		}

		if(!get_property("_chateauMonsterFought").to_boolean() && chateaumantegna_available())
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
			chateaumantegna_usePainting("");
		}

		//This should happen.
		if(isOverdueDigitize())
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
			ccAdv(1, $location[The Ice Hotel]);
			set_property("cc_combatDirective", "");
		}
	}
	return target;
}


boolean cc_cheesePostCS(int leave)
{
	set_property("cc_disableAdventureHandling", false);
	int startMeat = get_property("_todayMeat").to_int();
	if(startMeat == 0)
	{
		startMeat = my_meat();
		set_property("_todayMeat", my_meat());
	}

	if((item_amount($item[Confusing LED Clock]) > 0) && hippy_stone_broken() && (my_adventures() >= 25) && !get_property("_confusingLEDClockUsed").to_boolean())
	{
		use(1, $item[Confusing LED Clock]);
		if(cc_get_campground() contains $item[Confusing LED Clock])
		{
			visit_url("campground.php?action=rest");
			if(cc_get_campground() contains $item[Confusing LED Clock])
			{
				print("Was unable to use Confusing LED Clock", "red");
			}
			else
			{
				set_property("_confusingLEDClockUsed", true);
			}
		}
		else
		{
			print("Could not place a Confusing LED Clock", "red");
		}
	}


	zataraSeaside("meatsmith");
	if(item_amount($item[Special Seasoning]) < 1000)
	{
		songboomSetting($item[Special Seasoning]);
	}
	else
	{
		songboomSetting($item[Gathered Meat-Clip]);
	}
	getHorse("meat");
	dailyEvents();
	if((get_property("puzzleChampBonus").to_int() == 20) && !get_property("_witchessBuff").to_boolean())
	{
		visit_url("campground.php?action=witchess");
		visit_url("choice.php?whichchoice=1181&pwd=&option=3");
		visit_url("choice.php?whichchoice=1183&pwd=&option=2");
	}
	if((my_mp() > 100) && have_skill($skill[Incredible Self-Esteem]) && !get_property("_incredibleSelfEsteemCast").to_boolean())
	{
		use_skill(1, $skill[Incredible Self-Esteem]);
	}


	location loc = $location[Barf Mountain];
	if(get_property("eldritchFissureAvailable").to_boolean())
	{
//		loc = $location[An Eldritch Fissure];
	}
	if(get_property("eldritchHorrorAvailable").to_boolean())
	{
//		loc = $location[An Eldritch Horror];
//		loc = $location[An Eldritch Fissure];
	}

	if(hippy_stone_broken())
	{
		deck_cheat("fites");
	}
	deck_cheat("Ancestral Recall");
	deck_cheat("Island");
	deck_cheat("Year of Plenty");
	cc_voteSetup();


	if(item_amount($item[Time-Spinner]) > 0)
	{
		if(!get_property("_timeSpinnerReplicatorUsed").to_boolean())
		{
			cli_execute("FarFuture booze");
		}
	}

	if(!get_property("_pottedTeaTreeUsed").to_boolean() && (get_campground() contains $item[Potted Tea Tree]))
	{
		cli_execute("teatree cuppa royal tea");
		put_closet(item_amount($item[Cuppa Royal Tea]), $item[Cuppa Royal Tea]);
	}

	while((get_property("_sourceTerminalExtrudes").to_int() < 3) && contains_text(get_property("sourceTerminalExtrudeKnown"),"booze.ext") && (item_amount($item[Source Essence]) >= 10))
	{
		cc_sourceTerminalExtrude($item[Hacked Gibson]);
	}
	while((my_mp() < 100) && (get_property("timesRested").to_int() < total_free_rests()) && chateaumantegna_available() && (inebriety_left() > 0))
	{
		doRest();
	}

	take_storage(storage_amount($item[Cold Hi Mein]), $item[Cold Hi Mein]);
	take_storage(storage_amount($item[Hot Hi Mein]), $item[Hot Hi Mein]);

	item mein = $item[Cold Hi Mein];
	if(item_amount($item[Cold Hi Mein]) < 2)
	{
		mein = $item[Hot Hi Mein];
	}

	take_storage(storage_amount($item[Jumping Horseradish]), $item[Jumping Horseradish]);
	if((fullness_left() >= 15) && (item_amount(mein) > 0) && (my_level() >= mein.levelreq))
	{
		buffMaintain($effect[Got Milk], 0, 1, 5);
		ccEat(1, mein);
	}
	if((fullness_left() >= 10) && (item_amount(mein) > 0) && (my_level() >= mein.levelreq) && (get_property("_timeSpinnerMinutesUsed").to_int() <= 7))
	{
		buffMaintain($effect[Got Milk], 0, 1, 5);
		if(!timeSpinnerConsume(mein))
		{
			ccEat(1, mein);
		}
	}
	if((fullness_left() > 0) && (item_amount($item[Jumping Horseradish]) > 0) && (my_level() >= $item[Jumping Horseradish].levelreq))
	{
		buffMaintain($effect[Got Milk], 0, 1, 1);
		ccEat(1, $item[Jumping Horseradish]);
	}
	while((fullness_left() > 0) && (item_amount($item[Jumping Horseradish]) > 0) && (my_level() >= $item[Jumping Horseradish].levelreq))
	{
		buffMaintain($effect[Got Milk], 0, 1, 1);
		if(!timeSpinnerConsume($item[Jumping Horseradish]))
		{
			ccEat(1, $item[Jumping Horseradish]);
		}
	}

	if(item_amount($item[Time-Spinner]) > 0)
	{
		while(get_property("_timeSpinnerMinutesUsed").to_int() <= 8)
		{
			cli_execute("FarFuture none");
		}
	}

	while((inebriety_left() >= 1) && (item_amount($item[Astral Pilsner]) > 0))
	{
		buffMaintain($effect[Ode to Booze], 50, 1, 1);
		ccDrink(1, $item[Astral Pilsner]);
	}

	if(!get_property("_mimeArmyShotglassUsed").to_boolean() && (item_amount($item[Mime Army Shotglass]) > 0))
	{
		if(item_amount($item[Sacramento Wine]) > 0)
		{
			buffMaintain($effect[Ode to Booze], 50, 1, 1);
			ccDrink(1, $item[Sacramento Wine]);
		}
	}

	while((inebriety_left() >= 8) && (item_amount($item[Sacramento Wine]) > 4))
	{
		buffMaintain($effect[Ode to Booze], 50, 1, 4);
		ccDrink(4, $item[Sacramento Wine]);
	}

	while((inebriety_left() >= 4) && (item_amount($item[Hacked Gibson]) > 0))
	{
		buffMaintain($effect[Ode to Booze], 50, 1, 4);
		ccDrink(1, $item[Hacked Gibson]);
	}
	while((inebriety_left() >= 1) && (item_amount($item[Sacramento Wine]) > 0))
	{
		item it = equipped_item($slot[Acc3]);
		if((it != $item[Mafia Pinky Ring]) && (item_amount($item[Mafia Pinky Ring]) > 0))
		{
			equip($slot[Acc3], $item[Mafia Pinky Ring]);
		}
		buffMaintain($effect[Ode to Booze], 50, 1, 1);
		ccDrink(1, $item[Sacramento Wine]);
		if(equipped_item($slot[Acc3]) != it)
		{
			equip($slot[Acc3], it);
		}
	}

	while((spleen_left() >= 4) && (item_amount($item[Agua de Vida]) > 0))
	{
		chew(1, $item[Agua de Vida]);
	}
	while((spleen_left() >= 4) && (item_amount($item[Unconscious Collective Dream Jar]) > 0))
	{
		chew(1, $item[Unconscious Collective Dream Jar]);
	}
	if((my_adventures() > 100) && (spleen_left() <= 3))
	{
		rethinkingCandy($effect[Synthesis: Greed]);
		rethinkingCandy($effect[Synthesis: Greed]);
		rethinkingCandy($effect[Synthesis: Greed]);
	}
	while((spleen_left() >= 3) && (item_amount($item[Carrot Juice]) > 0))
	{
		chew(1, $item[Carrot Juice]);
	}

	cc_sourceTerminalEnhance($effect[Meat.enh]);
	cc_sourceTerminalEnhance($effect[Meat.enh]);
	if(my_adventures() > 50)
	{
		cc_sourceTerminalEnhance($effect[Meat.enh]);
	}
	else
	{
		cc_sourceTerminalEnhance($effect[Items.enh]);
	}

	if(!get_property("_didMining").to_boolean() && (my_daycount() == 2) && have_skill($skill[Unaccompanied Miner]))
	{
		if(item_amount($item[High-Temperature Mining Drill]) > 0)
		{
			ccMaximize("hot res, equip high-temperature mining drill, -equip snow suit", 0, 0, false);
			#equip($item[High-Temperature Mining Drill]);
			if(elemental_resist($element[hot]) >= 15)
			{
				string temp = visit_url("mining.php?mine=6", false);
				temp = visit_url("mining.php?mine=6&which=51&pwd=");
				temp = visit_url("mining.php?mine=6&which=43&pwd=");
				temp = visit_url("mining.php?mine=6&which=35&pwd=");
				temp = visit_url("mining.php?mine=6&which=27&pwd=");
				temp = visit_url("mining.php?mine=6&which=19&pwd=");
			}
		}
		set_property("_didMining", true);
	}

	boolean oldGarbage = get_property("cc_getDinseyGarbageMoney").to_boolean();
	set_property("cc_getDinseyGarbageMoney", true);
	dinseylandfill_garbageMoney();
	set_property("cc_getDinseyGarbageMoney", oldGarbage);

	getDiscoStyle(7);
	volcano_bunkerJob();
	change_mcd(0);

	cc_sourceTerminalEducate($skill[Extract], $skill[Turbo]);
	fightClubSpa($effect[Uncucumbered]);
	fightClubScavenge();
	fightClubRecruit(1);
	fightClubSpar(1);

	familiar toFam = $familiar[Cocoabo];
	if(available_amount($item[Infinite BACON Machine]) > 0)
	{
		if(have_familiar($familiar[Robortender]) && contains_text(get_property("_roboDrinks"), "drive-by shooting"))
		{
			mummifyFamiliar($familiar[Robortender], "meat");
			toFam = $familiar[Robortender];
		}
		else if(have_familiar($familiar[Hobo Monkey]))
		{
			mummifyFamiliar($familiar[Hobo Monkey], "meat");
			toFam = $familiar[Hobo Monkey];
		}
		else if(have_familiar($familiar[Golden Monkey]))
		{
			mummifyFamiliar($familiar[Hobo Monkey], "meat");
			toFam = $familiar[Hobo Monkey];
		}
	}
	else if(have_familiar($familiar[Intergnat]))
	{
		mummifyFamiliar($familiar[Intergnat], "meat");
		toFam = $familiar[Intergnat];
	}

	handleFamiliar(toFam);
	use_familiar(toFam);

	if(get_property("cc_interrupt").to_boolean())
	{
		set_property("cc_interrupt", false);
		abort("Abort requested.");
	}

	januaryToteAcquire($item[Wad Of Used Tape]);
	cli_execute("/unequip all");
	if(item_amount($item[Wad Of Used Tape]) > 0)
	{
		equip($item[Wad Of Used Tape]);
	}
	else if(item_amount($item[The Crown of Ed the Undying]) > 0)
	{
		equip($item[The Crown of Ed the Undying]);
		adjustEdHat("meat");
	}
	if(item_amount($item[Camp Scout Backpack]) > 0)
	{
		equip($item[Camp Scout Backpack]);
	}
	if(item_amount($item[Buddy Bjorn]) > 0)
	{
		equip($item[Buddy Bjorn]);
		bjornify_familiar($familiar[Warbear Drone]);
	}
	if(item_amount($item[Sneaky Pete\'s Leather Jacket]) > 0)
	{
		equip($item[Sneaky Pete\'s Leather Jacket]);
	}
	if(item_amount($item[Thor\'s Pliers]) > 0)
	{
		equip($item[Thor\'s Pliers]);
	}
	if((item_amount($item[Garbage Sticker]) > 0) && can_equip($item[Garbage Sticker]))
	{
		equip($item[Garbage Sticker]);
	}
	if(item_amount($item[Operation Patriot Shield]) > 0)
	{
		equip($item[Operation Patriot Shield]);
	}
	if((item_amount($item[Half A Purse]) > 0) && can_equip($item[Half A Purse]))
	{
		equip($item[Half A Purse]);
	}
	else if((item_amount($item[Silver Cow Creamer]) > 0) && can_equip($item[Silver Cow Creamer]))
	{
		equip($item[Silver Cow Creamer]);
	}

	if(item_amount($item[Pantsgiving]) > 0)
	{
		equip($item[Pantsgiving]);
	}
	if(item_amount($item[Cheap Sunglasses]) > 0)
	{
		equip($slot[acc1], $item[Cheap Sunglasses]);
	}
	if((item_amount($item[Ring Of The Skeleton Lord]) > 0) && can_equip($item[Ring Of The Skeleton Lord]))
	{
		equip($slot[acc2], $item[Ring Of The Skeleton Lord]);
	}
	else if(item_amount($item[Incredibly Dense Meat Gem]) > 0)
	{
		equip($slot[acc2], $item[Incredibly Dense Meat Gem]);
	}
	else if(item_amount($item[Sister Accessory]) > 0)
	{
		equip($slot[acc2], $item[Sister Accessory]);
	}
	if(item_amount($item[Mr. Screege\'s Spectacles]) > 0)
	{
		equip($slot[acc3], $item[Mr. Screege\'s Spectacles]);
	}
	else if(item_amount($item[Mr. Cheeng\'s Spectacles]) > 0)
	{
		equip($slot[acc3], $item[Mr. Cheeng\'s Spectacles]);
	}
	if((item_amount($item[Snow Suit]) > 0) && (get_property("_snowSuitCount").to_int() < 50))
	{
		equip($item[Snow Suit]);
		if(get_property("snowsuit") != "nose")
		{
			cli_execute("snowsuit nose");
		}
	}
	else if(item_amount($item[Astral Pet Sweater]) > 0)
	{
		equip($item[Astral Pet Sweater]);
	}

	foreach it in $items[Defective Game Grid Token, Glenn\'s Golden Dice, The Legendary Beat]
	{
		if(item_amount(it) > 0)
		{
			use(1, it);
		}
	}
	chibiChat();
	if(possessEquipment($item[Kremlin\'s Greatest Briefcase]) && (get_property("_kgbClicksUsed").to_int() < 24))
	{
		kgbWasteClicks();
	}
	buffMaintain($effect[Polka of Plenty], 10, 1, 1);
	asdonAutoFeed(37);
	asdonBuff($effect[Driving Observantly]);


	loveTunnelAcquire(true, $stat[Moxie], true, 3, true, 3);

	monster digitizeTarget = cc_specialAftercore(toFam);

	bjornify_familiar($familiar[Warbear Drone]);

	if(!didWePlantHere($location[Barf Mountain]) && florist_available() && (my_adventures() > 0) && (my_location() == $location[Barf Mountain]) && (inebriety_left() >= 0) && (my_daycount() > 1))
	{
		ccAdv(1, $location[Barf Mountain]);
		cli_execute("florist plant stealing magnolia");
		cli_execute("florist plant pitcher plant");
		cli_execute("florist plant aloe guv'nor");
	}

	while(lx_witchess());
	if(possessEquipment($item[PARTY HARD T-Shirt]))
	{
		put_closet(item_amount($item[PARTY HARD T-Shirt]), $item[PARTY HARD T-Shirt]);
	}
	while(lx_freecombats());

	if((item_amount($item[License To Chill]) > 0) && !get_property("_licenseToChillUsed").to_boolean())
	{
		use(1, $item[License To Chill]);
		int count = 0;
		while((my_mp() > 1000) && (count < 10))
		{
			count++;
			cli_execute("postcheese");
		}
	}
	if((item_amount($item[Platinum Yendorian Express Card]) > 0) && !get_property("expressCardUsed").to_boolean())
	{
		use(1, $item[Platinum Yendorian Express Card]);
		int count = 0;
		while((my_mp() > 1000) && (count < 10))
		{
			count++;
			cli_execute("postcheese");
		}
	}

#	if((get_property("doctorBagQuestLights").to_int() < 5) && (item_amount($item[Lil\' Doctor&trade; bag]) > 0) && (get_property("doctorBagUpgrades").to_int() < 0))
#	{
#		set_property("choiceAdventure1340", 1);
#		equip($slot[acc3], $item[Lil\' Doctor&trade; bag]);
#	}

	set_property("choiceAdventure1106", 3);
	while((my_adventures() > leave) && (inebriety_left() >= 0))
	{
		print("Have " + my_adventures() + " with target of " + leave + " adventures.", "orange");
		if(equipped_item($slot[acc1]) != $item[Cheap Sunglasses])
		{
			equip($slot[acc1], $item[Cheap Sunglasses]);
		}

		cc_sourceTerminalEducate($skill[Extract], $skill[Turbo]);
		buffMaintain($effect[Leisurely Amblin\'], 50, 1, 1);
		buffMaintain($effect[How to Scam Tourists], 0, 1, 1);
		buffMaintain($effect[Polka of Plenty], 10, 1, 1);
		asdonAutoFeed(37);
		asdonBuff($effect[Driving Observantly]);
		if(have_effect($effect[meat.enh]) == 0)
		{
			cc_sourceTerminalEnhance("meat");
		}
		if((my_mp() > 100) && have_skill($skill[Incredible Self-Esteem]) && !get_property("_incredibleSelfEsteemCast").to_boolean())
		{
			use_skill(1, $skill[Incredible Self-Esteem]);
		}
		if((my_mp() > 100) && have_skill($skill[Pirate Bellow]) && !get_property("_pirateBellowUsed").to_boolean())
		{
			use_skill(1, $skill[Pirate Bellow]);
		}

		if(get_property("cc_interrupt").to_boolean())
		{
			set_property("cc_interrupt", false);
			abort("Abort requested.");
		}
		if((fullness_left() > 0) && (item_amount($item[Jumping Horseradish]) > 0))
		{
			ccEat(1, $item[Jumping Horseradish]);
		}

		handleFamiliar(toFam);
		if((item_amount($item[Snow Suit]) > 0) && ((get_property("_snowSuitCount").to_int() < 50) || ((get_property("_carrotNoseDrops").to_int() < 3) && (get_property("_snowSuitCount").to_int() < 75))))
		{
			equip($item[Snow Suit]);
			if(get_property("snowsuit") != "nose")
			{
				cli_execute("snowsuit nose");
			}
		}
		else if(item_amount($item[Astral Pet Sweater]) > 0)
		{
			equip($item[Astral Pet Sweater]);
		}

		foreach fam in $familiars[Garbage Fire, Unconscious Collective, Li\'l Xenomorph, Bloovian Groose, Golden Monkey, Rogue Program, Space Jellyfish, Grim Brother, Fist Turkey, Rockin\' Robin, Optimistic Candle, Intergnat]
		{
			if(!have_familiar(fam))
			{
				continue;
			}
			if(($familiars[Garbage Fire] contains fam) && (get_property("garbageFireProgress").to_int() >= 25))
			{
				handleFamiliar(fam);
				break;
			}
			if(($familiars[Rockin\' Robin] contains fam) && (get_property("rockinRobinProgress").to_int() >= 25))
			{
				handleFamiliar(fam);
				break;
			}
			if(($familiars[Optimistic Candle] contains fam) && (get_property("optimisticCandleProgress").to_int() >= 25))
			{
				handleFamiliar(fam);
				break;
			}
			if(($familiars[Intergnat] contains fam) && (item_amount($item[BACON]) < 150000) && (available_amount($item[First Post Shirt - Cir Senam]) == 0))
			{
				handleFamiliar(fam);
				break;
			}
			if($familiars[Unconscious Collective, Li\'l Xenomorph, Bloovian Groose, Golden Monkey, Rogue Program, Grim Brother, Fist Turkey] contains fam)
			{
				if(fam.drops_today < 5)
				{
					handleFamiliar(fam);
					break;
				}
			}
			if(($familiars[Space Jellyfish] contains fam) && (get_property("_spaceJellyfishDrops").to_int() < 3) && (loc == $location[Barf Mountain]))
			{
				handleFamiliar(fam);
				break;
			}
		}
		if(get_property("cc_familiarChoice") == $familiar[Hobo Monkey])
		{
			if(possessEquipment($item[Li\'l Pirate Costume]) || have_equipped($item[Li\'l Pirate Costume]))
			{
				//Tot with a Pirate costume?
			}
		}

		item acc1 = equipped_item($slot[acc1]);
		item acc2 = equipped_item($slot[acc2]);
		item acc3 = equipped_item($slot[acc3]);
		item back = equipped_item($slot[back]);
		item offhand = equipped_item($slot[off-hand]);
		item weapon = equipped_item($slot[weapon]);
		/*
		if(get_property("dinseyRollercoasterNext").to_boolean())
		{
			if(item_amount($item[Lucky Crimbo Tiki Necklace]) > 0)
			{
				equip($slot[acc1], $item[Lucky Crimbo Tiki Necklace]);
			}
			if(item_amount($item[Lucky Crimbo Tiki Necklace]) > 0)
			{
				equip($slot[acc2], $item[Lucky Crimbo Tiki Necklace]);
			}
			if(item_amount($item[Lucky Crimbo Tiki Necklace]) > 0)
			{
				equip($slot[acc3], $item[Lucky Crimbo Tiki Necklace]);
			}
		}
		*/
		if(equipped_item($slot[familiar]) == $item[none])
		{
			abort("Ugh, why is my familiar being unequipped?");
		}

		if(expectGhostReport())
		{
			if((back != $item[Protonic Accelerator Pack]) && (item_amount($item[Protonic Accelerator Pack]) > 0))
			{
				equip($slot[back], $item[Protonic Accelerator Pack]);
			}
		}
/*
		if(loc == $location[An Eldritch Fissure])
		{
			if(equipped_item($slot[off-hand]) != $item[Science Notebook])
			{
				equip($slot[off-hand], $item[Science Notebook]);
			}
			if(equipped_item($slot[hat]) != $item[Eldritch Scanner])
			{
				equip($slot[hat], $item[Eldritch Scanner]);
			}
			#buffMaintain($effect[Eldritch Alignment], 0, 1, 1);
		}
*/
		if((item_amount($item[&quot;I voted!&quot; sticker]) > 0) && (get_property("_voteFreeFights").to_int() < 3))
		{
			int votingTurn = get_property("lastVoteMonsterTurn").to_int();
			if(((total_turns_played() % 11) == 1) && (votingTurn < total_turns_played()))
			{
				equip($slot[acc3], $item[&quot;I voted!&quot; sticker]);
				if((get_property("_voteMonster") == $monster[Terrible Mutant]) && (item_amount($item[Mutant Arm]) > 0))
				{
					equip($slot[weapon], $item[Mutant Arm]);
				}
			}
		}

		if(((my_session_adv() % 12) == 0) && (item_amount($item[Kramco Sausage-o-Matic&trade;]) > 0))
		{
			equip($slot[off-hand], $item[Kramco Sausage-o-Matic&trade;]);
		}
		if((get_property("_sausagesMade").to_int() < 23) && (get_property("_sausagesEaten").to_int() < get_property("_sausageFights").to_int()) && (item_amount($item[Magical Sausage Casing]) > 0))
		{
			cli_execute("make 1 " + $item[Magical Sausage]);
			ccEat(1, $item[Magical Sausage]);
		}

		if((loc == $location[Barf Mountain]) && ((get_property("sourceTerminalEducate1") == "extract.edu") || (get_property("sourceTerminalEducate2")  == "extract.edu")) && have_skill($skill[Curse Of Weaksauce]) && have_skill($skill[Meteor Lore]) && have_equipped($item[Pantsgiving]) && (item_amount($item[Rain-Doh Indigo Cup]) > 0) && get_property("lovebugsUnlocked").to_boolean() && (item_amount($item[Time-Spinner]) > 0) && have_skill($skill[Candyblast]) && have_skill($skill[Stuffed Mortar Shell]) && (get_property("_shatteringPunchUsed").to_int() >= 3) && get_property("_gingerbreadMobHitUsed").to_boolean() && (get_property("_usedReplicaBatoomerang").to_int() >= 3) && (my_mp() >= 40))
		{
			ccAdv(1, loc, "if hasskill extract; skill extract; endif; if hasskill Sing Along; skill Sing Along; endif; skill weaksauce; if hasskill extract jelly; skill extract jelly; endif; skill pocket crumbs; skill micrometeorite; skill air dirty laundry; use rain-doh indigo cup, rain-doh blue balls; skill summon love mosquito; use time-spinner; skill candyblast; skill stuffed mortar shell; skill summon love stinkbug; skill saucestorm; skill saucestorm; skill saucestorm; skill saucestorm");
		}
		else
		{
			ccAdv(1, loc);
		}
		LX_ghostBusting();

#		if(have_equipped($item[&quot;I voted!&quot; sticker]))
#		{
#			abort("beep");
#		}
		if(isOverdueDigitize())
		{
			if((get_property("_sourceTerminalDigitizeMonsterCount").to_int() > 4) && (get_property("_sourceTerminalDigitizeUses").to_int() < 3))
			{
				cc_sourceTerminalEducate($skill[Digitize], $skill[Turbo]);
				set_property("cc_combatDirective", "start;skill curse of weaksauce;skill digitize;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			}
			else
			{
				set_property("cc_combatDirective", "start;skill curse of weaksauce;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			}
			ccAdv($location[The Ice Hotel]);
		}
		while(item_amount($item[Rain-Doh Box Full Of Monster]) > 0)
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			handleCopiedMonster($item[Rain-Doh Box Full Of Monster]);
		}
		while(item_amount($item[Spooky Putty Monster]) > 0)
		{
			set_property("cc_combatDirective", "start;skill curse of weaksauce;item rain-doh black box, time-spinner;item spooky putty sheet, nasty-smelling moss;skill stuffed mortar shell; skill sing along;item rain-doh indigo cup, rain-doh blue balls");
			handleCopiedMonster($item[Spooky Putty Monster]);
		}

		if(true)
		{
			if(equipped_item($slot[back]) != back)
			{
				equip($slot[back], back);
			}
			if(equipped_item($slot[weapon]) != weapon)
			{
				equip($slot[weapon], weapon);
			}
			if(equipped_item($slot[off-hand]) != offhand)
			{
				equip($slot[off-hand], offhand);
			}
			if(equipped_item($slot[acc1]) != acc1)
			{
				equip($slot[acc1], acc1);
			}
			if(equipped_item($slot[acc2]) != acc2)
			{
				equip($slot[acc2], acc2);
			}
			if(equipped_item($slot[acc3]) != acc3)
			{
				equip($slot[acc3], acc3);
			}
		}

		if(hippy_stone_broken())
		{
			doNumberology("fites3");
		}
		else
		{
			doNumberology("adventures3");
		}

		if(have_effect($effect[How to Scam Tourists]) == 2)
		{
			while((my_adventures() > 0) && volcano_lavaDogs());
			if(have_effect($effect[Drenched in Lava]) > 0)
			{
				doHottub();
			}
		}

		if((my_adventures() < 200) && (my_adventures() > 150))
		{
			if(cc_afterSpacegate())
			{
				continue;
			}
		}

/*
		if(my_adventures() < 200)
		{
			if((get_property("_doctorBagQuestsDone").to_int() < 1) && (my_adventures() < 200))
			{
				if(get_property("lastEncounter") == "A Pound of Cure")
				{
					set_property("_doctorBagQuestsDone", get_property("_doctorBagQuestsDone").to_int() + 1);
					set_property("lastEncounter", "");
				}
				if(get_property("questDoctorBag") == "unstarted")
				{
					equip($slot[acc3], $item[Lil\' Doctor&trade; Bag]);
				}
				else
				{
					equip($slot[acc1], $item[Lil\' Doctor&trade; Bag]);
					item need = to_item(get_property("doctorBagQuestItem"));
					location goal = to_location(get_property("doctorBagQuestLocation"));
					if((need == $item[none]) || (goal == $location[none]))
					{
						abort("Doctor quest exists but we have no goal location or item");
					}
					buyUpTo(1, need);
					if(item_amount(need) == 0)
					{
						abort("Can not satisfy doctor goal :(");
					}

					familiar oldFam = my_familiar();

					int runs = (familiar_weight($familiar[Pair of Stomping Boots]) + weight_adjustment()) / 5;
					runs = runs - get_property("_banderRunaways").to_int();
					if(runs > 0)
					{
						use_familiar($familiar[Pair Of Stomping Boots]);
						adv1(goal, -1, "runaway; repeat");
					}
					else
					{
						use_familiar($familiar[Artistic Goth Kid]);
						if(!get_property("_csaFireStartingDrop").to_boolean())
						{
							equip($slot[back], $item[Camp Scout Backpack]);
						}
						ccAdv(goal);
						equip($slot[back], back);
					}

					if(get_property("lastEncounter") == "A Pound of Cure")
					{
						set_property("_doctorBagQuestsDone", get_property("_doctorBagQuestsDone").to_int() + 1);
						set_property("lastEncounter", "");
					}
					use_familiar(oldFam);
					continue;
				}
			}

		}
*/
		cc_afterGingercity();

		if(true)
		{
			if(equipped_item($slot[back]) != back)
			{
				equip($slot[back], back);
			}
			if(equipped_item($slot[weapon]) != weapon)
			{
				equip($slot[weapon], weapon);
			}
			if(equipped_item($slot[off-hand]) != offhand)
			{
				equip($slot[off-hand], offhand);
			}
			if(equipped_item($slot[acc1]) != acc1)
			{
				equip($slot[acc1], acc1);
			}
			if(equipped_item($slot[acc2]) != acc2)
			{
				equip($slot[acc2], acc2);
			}
			if(equipped_item($slot[acc3]) != acc3)
			{
				equip($slot[acc3], acc3);
			}
		}

		if((my_adventures() > leave) && (get_property("lastDMTDuplication").to_int() < my_ascensions()) && (item_amount($item[Clara\'s Bell]) > 0) && !isOverdueDigitize())
		{
			item toGet = $item[Eldritch Elixir];
//			toGet = $item[Denastified Haunch];
			if(item_amount(toGet) == 0)
			{
				take_storage(1, toGet);
			}
			if((get_property("lastDMTDuplication").to_int() < my_ascensions()) && (item_amount(toGet) > 0))
			{
				if(!get_property("_claraBellUsed").to_boolean() && (get_property("encountersUntilDMTChoice").to_int() > 0))
				{
					use(1, $item[Clara\'s Bell]);
				}
				handleFamiliar($familiar[Machine Elf]);
				use_familiar($familiar[Machine Elf]);
				string temp = visit_url("adventure.php?snarfblat=458");
				temp = visit_url("choice.php?pwd=" + my_hash() + "&whichchoice=1119&option=4");
				temp = visit_url("choice.php?pwd=" + my_hash() + "&whichchoice=1125&option=1&iid=" + to_int(toGet));
				set_property("lastDMTDuplication", my_ascensions());
			}
			put_closet(item_amount(toGet), toGet);
		}
	}

	handleFamiliar(toFam);
	if(item_amount($item[Snow Suit]) > 0)
	{
		equip($item[Snow Suit]);
	}

/*
	while((inebriety_left() >= 5) && get_property("cc_breakstone").to_boolean())
	{
		if(!buyUpTo(1, $item[5-Hour Acrimony], 5000))
		{
			print("Could not buy 5-Hour Acrimony, price too high", "red");
			break;
		}
		drink(1, $item[5-Hour Acrimony]);
	}


	while((inebriety_left() >= 2) && get_property("cc_breakstone").to_boolean())
	{
		if(!buyUpTo(1, $item[Beery Blood], 500))
		{
			print("Could not buy Beery Blood, price too high", "red");
			break;
		}
		drink(1, $item[Beery Blood]);
	}
*/
	if(fullness_left() > 0)
	{
		put_closet(item_amount($item[Deviled Egg]), $item[Deviled Egg]);
		if(item_amount($item[Jumping Horseradish]) > 0)
		{
			ccEat(1, $item[Jumping Horseradish]);
		}
		else
		{
			tryPantsEat();
		}
		cli_execute("refresh all");
	}

	while((my_adventures() > leave) && (inebriety_left() >= 0))
	{
		if(loc == $location[Barf Mountain])
		{
			buffMaintain($effect[Polka of Plenty], 10, 1, 1);
			buffMaintain($effect[Leisurely Amblin\'], 50, 1, 1);
			buffMaintain($effect[How to Scam Tourists], 0, 1, 1);
		}
		ccAdv(1, loc);
	}

	if(fullness_left() > 0)
	{
		put_closet(item_amount($item[Deviled Egg]), $item[Deviled Egg]);
		if(item_amount($item[Jumping Horseradish]) > 0)
		{
			eatsilent(1, $item[Jumping Horseradish]);
		}
		else
		{
			tryPantsEat();
		}
		cli_execute("refresh all");
	}

	while((my_adventures() > leave) && (inebriety_left() >= 0))
	{
		if(loc == $location[Barf Mountain])
		{
			buffMaintain($effect[Polka of Plenty], 10, 1, 1);
			buffMaintain($effect[Leisurely Amblin\'], 50, 1, 1);
			buffMaintain($effect[How to Scam Tourists], 0, 1, 1);
		}
		ccAdv(1, loc);
		if((item_amount($item[License To Chill]) > 0) && !get_property("_licenseToChillUsed").to_boolean())
		{
			use(1, $item[License To Chill]);
		}

	}

	if(fullness_left() > 0)
	{
		put_closet(item_amount($item[Deviled Egg]), $item[Deviled Egg]);
		if(item_amount($item[Jumping Horseradish]) > 0)
		{
			eatsilent(1, $item[Jumping Horseradish]);
		}
		else
		{
			tryPantsEat();
		}
		cli_execute("refresh all");
	}

	while((my_adventures() > leave) && (inebriety_left() >= 0))
	{
		if(loc == $location[Barf Mountain])
		{
			buffMaintain($effect[Polka of Plenty], 10, 1, 1);
			buffMaintain($effect[Leisurely Amblin\'], 50, 1, 1);
			buffMaintain($effect[How to Scam Tourists], 0, 1, 1);
		}
		ccAdv(1, loc);
	}
	#use_barrels();

	if((item_amount($item[CSA fire-starting kit]) > 0) && !get_property("_fireStartingKitUsed").to_boolean() && hippy_stone_broken())
	{
		set_property("choiceAdventure595", 1);
		use(1, $item[CSA fire-starting kit]);
	}

	if((item_amount($item[Rain-Doh Indigo Cup]) > 0) && (item_amount($item[Spooky Putty Sheet]) > 0))
	{
		//Use Spooky Putty Sheet and Rain-Doh Indigo Cup to make copies of a fax monster and fight it
		//Black Crayon Fish or something seems good (or other free monster?)
	}

	if((my_adventures() > 0) && (my_inebriety() <= inebriety_limit()))
	{
		print("Adventures are leftover, not finishing overdrinking and PVP", "red");
		return true;
	}

	if((item_amount($item[School of Hard Knocks Diploma]) > 0) && (!get_property("_hardKnocksDiplomaUsed").to_boolean()))
	{
		use(1, $item[School of Hard Knocks Diploma]);
	}

	if((item_amount($item[5-hour acrimony]) == 0) && hippy_stone_broken())
	{
		if(!buyUpTo(1, $item[5-Hour Acrimony], 5000))
		{
			print("Could not buy 5-Hour Acrimony, price too high", "red");
		}
	}
	if(hippy_stone_broken())
	{
		if(my_daycount() == 1)
		{
			use_familiar($familiar[Stooper]);
			buffMaintain($effect[Ode to Booze], 50, 1, 5);
			ccDrink(1, $item[Cold One]);
			overdrink(1, $item[Hacked Gibson]);
		}
		else
		{
			if((item_amount($item[5-hour acrimony]) > 0) && (my_inebriety() <= inebriety_limit()))
			{
				overdrink(1, $item[5-hour acrimony]);
			}
		}

		if(get_property("cc_pvpOutfit") != "")
		{
			cli_execute("pull outfit pvp");
			cli_execute("pull kiwi beak");
			cli_execute("pull jam band");
			cli_execute("pull pail");
			cli_execute("/outfit " + get_property("cc_pvpOutfit"));
			cli_execute(get_property("cc_pvpCommands"));
		}
		int stance = 6;
		if(get_property("cc_pvpStance") != "")
		{
			stance = get_property("cc_pvpStance").to_int();
		}
		cli_execute("pvp loot " + stance);
	}
	int endMeat = my_meat();
	int gainedMeat = endMeat - startMeat;
	print("Meat gained:  " + gainedMeat, "blue");
	cli_execute("cc_ascend");
	print("Meat gained:  " + gainedMeat, "blue");
	return true;
}

boolean cc_customMafiaAddress()
{
	print_html("<a href=\"http://cheesellc.com/kol/KoLmafia-" + get_revision() + "M.jar\" target=\"_blank\">Link to possible copy of Cheesecookie\'s Custom Mafia build.</a>");
	print("http://cheesellc.com/kol/KoLmafia-" + get_revision() + "M.jar");
	return true;
}

boolean cc_doCS()
{
	cli_execute("cc_ascend");
	cc_aftercore();
	cc_ascendIntoCS();
	cli_execute("cc_ascend");
	return true;
}
