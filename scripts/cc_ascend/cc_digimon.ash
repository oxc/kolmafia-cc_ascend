script "cc_digimon.ash"


void digimon_initializeSettings()
{
	if(cc_my_path() == "Pocket Familiars")
	{
		set_property("cc_ballroomsong", "finished");
		set_property("cc_cubeItems", false);
		set_property("cc_getStarKey", true);
		set_property("cc_grimstoneOrnateDowsingRod", false);
		set_property("cc_holeinthesky", true);
		set_property("cc_useCubeling", false);
		set_property("cc_wandOfNagamar", true);
		set_property("_mummifyDone", true);
		digimon_makeTeam();
	}
}


boolean digimon_makeTeam()
{
	if(cc_my_path() == "Pocket Familiars")
	{
		string temp = visit_url("famteam.php", false);
		familiar newFam = $familiar[El Vibrato Megadrone];
		foreach fam in $familiars[]
		{
			if($familiars[Scary Death Orb, Space Jellyfish] contains fam)
			{
				continue;
			}
			if(contains_text(temp, "Lv. 5 " + fam))
			{
				continue;
			}
			if(fam.poke_level == 5)
			{
				continue;
			}
			newFam = fam;
			break;
		}

		foreach fam in $familiars[Clockwork Grapefruit, Mini-Crimbot, MagiMechTEch MicroMechaMech, Autonomous Disco Ball, Software Bug, Robortender, Putty Buddy]
		{
			if(contains_text(temp, "Lv. 5 " + fam))
			{
				continue;
			}
			if(fam.poke_level == 5)
			{
				continue;
			}
			newFam = fam;
			break;
		}

		print("I choose you! " + newFam.name + " the " + newFam + "!!!!", "green");
#		temp = visit_url("famteam.php?slot=1&fam=" + to_int($familiar[El Vibrato Megadrone]) + "&pwd&action=slot");
		temp = visit_url("famteam.php?slot=1&fam=" + to_int(newFam) + "&pwd&action=slot");
		if(get_property("_digimonFront") != newFam)
		{
			set_property("_digimonFront", newFam);
		}


		familiar midFam = $familiar[Scary Death Orb];
		foreach fam in $familiars[Bad Vibe, Restless Cow Skull, Mariachi Chihuahua]
		{
			if(contains_text(temp, "Lv. 5 " + fam))
			{
				continue;
			}
			if(fam.poke_level == 5)
			{
				continue;
			}
			midFam = fam;
			break;
		}

		temp = visit_url("famteam.php?slot=2&fam=" + to_int(midFam) + "&pwd&action=slot");
		if(get_property("_digimonMiddle") != midFam)
		{
			set_property("_digimonMiddle", midFam);
		}
		if(have_familiar($familiar[Space Jellyfish]))
		{
			temp = visit_url("famteam.php?slot=3&fam=" + to_int($familiar[Space Jellyfish]) + "&pwd&action=slot");
			if(get_property("_digimonBack") != $familiar[Space Jellyfish])
			{
				set_property("_digimonBack", $familiar[Space Jellyfish]);
			}
		}
		else
		{
			temp = visit_url("famteam.php?slot=3&fam=" + to_int($familiar[Killer Bee]) + "&pwd&action=slot");
			if(get_property("_digimonBack") != $familiar[Killer Bee])
			{
				set_property("_digimonBack", $familiar[Killer Bee]);
			}
		}
	}
	return true;
}


boolean LM_digimon()
{
	if(cc_my_path() == "Pocket Familiars")
	{
		digimon_makeTeam();
	}
	return false;
}

boolean digimon_ccAdv(int num, location loc, string option)
{
	if(cc_my_path() != "Pocket Familiars")
	{
		abort("Can not use Digimon protocols without Digimon!");
	}

	if(option == "")
	{
		#Yeah, this is not a thing right now.
	}

	boolean retval = adv1(loc, 0, option);
	print("[Insert Punch Out music here]", "green");
	string temp = visit_url("fambattle.php");

	if(contains_text(temp, "Fight!"))
	{
		familiar blastFam = to_familiar(get_property("_digimonBack"));
		familiar midFam = to_familiar(get_property("_digimonMiddle"));
#		familiar blastFam = $familiar[Space Jellyfish];
#		if(!have_familiar($familiar[Space Jellyfish]))
#		{
#			blastFam = $familiar[Killer Bee];
#		}

		if(contains_text(temp, "famaction[ult_crazyblast-" + to_int(blastFam) + "]"))
		{
			temp = visit_url("fambattle.php?pwd&famaction[ult_crazyblast-" + to_int(blastFam) + "]=ULTIMATE%3A+Spiky+Burst");
		}
		else
		{
			temp = visit_url("fambattle.php?pwd&famaction[backstab-" + to_int(blastFam) + "]=Backstab");
		}
		int action = 1;
		

		while(!contains_text(temp, "<!--WINWINWIN-->"))
		{
			if((action & 1) == 1)
			{
				temp = visit_url("fambattle.php?pwd&famaction[backstab-" + to_int(midFam) + "]=Backstab");
			}
			else
			{
				temp = visit_url("fambattle.php?pwd&famaction[backstab-" + to_int(blastFam) + "]=Backstab");
			}
			action++;
			if(contains_text(temp, "dejected and defeated"))
			{
				break;
			}
		}

		if($locations[The Defiled Alcove, The Defiled Cranny, The Defiled Niche, The Defiled Nook] contains my_location())
		{
			if(item_amount($item[Evilometer]) > 0)
			{
				use(1, $item[Evilometer]);
			}
		}
	}
	cli_execute("postcheese");

	return true;
}