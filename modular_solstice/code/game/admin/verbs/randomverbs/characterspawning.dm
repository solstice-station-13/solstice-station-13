/client/proc/spawn_character()
	set category = "Special Verbs"
	set name = "Spawn Character"
	set desc = "(Re)Spawn a client's loaded character."
	if(!holder)
		to_chat(src, "Only administrators may use this command.")
		return

	//I frontload all the questions so we don't have a half-done process while you're reading.
	var/client/picked_client = input(src, "Please specify which client's character to spawn.", "Client", "") as null|anything in GLOB.clients
	if(!picked_client)
		return

	var/location = alert(src,"Please specify where to spawn them.", "Location", "Right Here", "Arrivals", "Cancel")
	if(location == "Cancel" || !location)
		return

	var/announce = alert(src,"Announce as if they had just arrived?", "Announce", "Yes", "No", "Cancel")
	if(announce == "Cancel")
		return
	else if(announce == "Yes") //Too bad buttons can't just have 1/0 values and different display strings
		announce = 1
	else
		announce = 0

	var/inhabit = alert(src,"Put the person into the spawned mob?", "Inhabit", "Yes", "No", "Cancel")
	if(inhabit == "Cancel")
		return
	else if(inhabit == "Yes")
		inhabit = 1
	else
		inhabit = 0

	//Name matching is ugly but mind doesn't persist to look at.
	var/charjob
	var/records
	var/datum/computer_file/report/crew_record/record_found
	record_found = get_crewmember_record(picked_client.prefs.real_name)

	//Found their record, they were spawned previously
	if(record_found)
		var/samejob = alert(src,"Found [picked_client.prefs.real_name] in data core. They were [record_found.fields["real_rank"]] this round. Assign same job? They will not be re-added to the manifest/records, either way.","Previously spawned","Yes","Assistant","No")
		if(samejob == "Yes")
			charjob = record_found.fields["real_rank"]
		//else if(samejob == USELESS_JOB) //VOREStation Edit - Visitor not Assistant
		//	charjob = USELESS_JOB //VOREStation Edit - Visitor not Assistant
	else
		records = alert(src,"No data core entry detected. Would you like add them to the manifest, and sec/med/HR records?","Records","Yes","No","Cancel")
		if(records == "Cancel")
			return
		if(records == "Yes")
			records = 1
		else
			records = 0

	//Well you're not reloading their job or they never had one.
	if(!charjob)
		var/pickjob = input(src,"Pick a job to assign them (or none).","Job Select","-No Job-") as null|anything in all_jobs + "-No Job-"
		if(!pickjob)
			return
		if(pickjob != "-No Job-")
			charjob = pickjob

	//If you've picked a job by now, you can equip them.
	var/equipment
	if(charjob)
		equipment = alert(src,"Spawn them with equipment?", "Equipment", "Yes", "No", "Cancel")
		if(equipment == "Cancel")
			return
		else if(equipment == "Yes")
			equipment = 1
		else
			equipment = 0

	//For logging later
	var/admin = key_name_admin(src)
	var/player_key = picked_client.key
	//VOREStation Add - Needed for persistence
	//var/picked_ckey = picked_client.ckey
	//var/picked_slot = picked_client.prefs.default_slot
	//VOREStation Add End

	var/mob/living/carbon/human/new_character
	var/spawnloc

	//Where did you want to spawn them?
	switch(location)
		if("Right Here") //Spawn them on your turf
			if(!src.mob)
				to_chat(src, "You can't use 'Right Here' when you are not 'Right Anywhere'!")
				return

			spawnloc = get_turf(src.mob)

		if("Arrivals") //Spawn them at a latejoin spawnpoint
			spawnloc = SSjobs.get_spawnpoint_for(picked_client, charjob)

		else //I have no idea how you're here
			to_chat(src, "Invalid spawn location choice.")
			return

	//Did we actually get a loc to spawn them?
	if(!spawnloc)
		to_chat(src, "Couldn't get valid spawn location.")
		return

	log_debug("??? [spawnloc]")
	
	new_character = new(spawnloc)

	//We were able to spawn them, right?
	if(!new_character)
		to_chat(src, "Something went wrong and spawning failed.")
		return

	//Write the appearance and whatnot out to the character
	picked_client.prefs.copy_to(new_character)
	if(new_character.dna)
		new_character.dna.ResetUIFrom(new_character)
		new_character.sync_organ_dna()
	if(inhabit)
		new_character.key = player_key
		//Were they any particular special role? If so, copy.
		//if(new_character.mind)
		//	var/datum/antagonist/antag_data = get_antag_data(new_character.mind.special_role)
		//	if(antag_data)
		//		antag_data.add_antagonist(new_character.mind)
		//		antag_data.place_mob(new_character)

	//VOREStation Add - Required for persistence
	//if(new_character.mind)
	//	new_character.mind.loaded_from_ckey = picked_ckey
	//	new_character.mind.loaded_from_slot = picked_slot
	//VOREStation Add End

	//If desired, apply equipment.
	if(equipment)
		if(charjob)
			new_character.mind_initialize()
			new_character.mind.assigned_role = charjob//If they somehow got a null assigned role.

			log_debug("[new_character.mind.assigned_role]")
			SSjobs.equip_rank(new_character, charjob, 1)
		//equip_custom_items(new_character)	//VOREStation Removal

	//If desired, add records.
	if(records)
		CreateModularRecord(new_character)

	//A redraw for good measure
	new_character.update_icons()

	//If we're announcing their arrival
	if(announce)
		AnnounceArrival(new_character, new_character.mind.assigned_role)

	log_admin("[admin] has spawned [player_key]'s character [new_character.real_name].")
	message_admins("[admin] has spawned [player_key]'s character [new_character.real_name].", 1)

	to_chat(new_character, "You have been fully spawned. Enjoy the game.")

	//feedback_add_details("admin_verb","RSPCH") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

	return new_character

/*
If a guy was gibbed and you want to revive him, this is a good way to do so.
Works kind of like entering the game with a new character. Character receives a new mind if they didn't have one.
Traitors and the like can also be revived with the previous role mostly intact.
/N */
/client/proc/respawn_character()
	set category = "Special Verbs"
	set name = "Respawn Character"
	set desc = "Respawn a person that has been gibbed/dusted/killed. They must be a ghost for this to work and preferably should not have a body to go back into."
	if(!holder)
		to_chat(src, "Only administrators may use this command.")
		return
	var/input = ckey(input(src, "Please specify which key will be respawned.", "Key", ""))
	if(!input)
		return

	var/mob/observer/ghost/G_found
	for(var/mob/observer/ghost/G in GLOB.player_list)
		if(G.ckey == input)
			G_found = G
			break

	if(!G_found)//If a ghost was not found.
		to_chat(usr, "<font color='red'>There is no active key like that in the game or the person is not currently a ghost.</font>")
		return

	var/mob/living/carbon/human/new_character = new()//The mob being spawned.

	var/datum/computer_file/report/crew_record/record_found			//Referenced to later to either randomize or not randomize the character.
	if(G_found.mind && !G_found.mind.active)	//mind isn't currently in use by someone/something
		record_found = get_crewmember_record(G_found.real_name)


	if(record_found)//If they have a record we can determine a few things.
		new_character.real_name = record_found.fields["name"]
		new_character.gender = record_found.fields["sex"]
		new_character.age = record_found.fields["age"]
		new_character.b_type = record_found.fields["b_type"]
	else
		new_character.gender = pick(MALE,FEMALE)
		var/datum/preferences/A = new()
		A.randomize_appearance_and_body_for(new_character)
		new_character.real_name = G_found.real_name

	if(!new_character.real_name)
		if(new_character.gender == MALE)
			new_character.real_name = capitalize(pick(GLOB.first_names_male)) + " " + capitalize(pick(GLOB.last_names))
		else
			new_character.real_name = capitalize(pick(GLOB.first_names_female)) + " " + capitalize(pick(GLOB.last_names))
	new_character.name = new_character.real_name

	if(G_found.mind && !G_found.mind.active)
		G_found.mind.transfer_to(new_character)	//be careful when doing stuff like this! I've already checked the mind isn't in use
	else
		new_character.mind_initialize()
	if(!new_character.mind.assigned_role)	new_character.mind.assigned_role = "Assistant"//If they somehow got a null assigned role.

	//DNA
	if(record_found)//Pull up their name from database records if they did have a mind.
		new_character.dna = new()//Let's first give them a new DNA.
		new_character.dna.unique_enzymes = record_found.fields["b_dna"]//Enzymes are based on real name but we'll use the record for conformity.

		// I HATE BYOND.  HATE.  HATE. - N3X
		var/list/newSE= record_found.fields["enzymes"]
		var/list/newUI = record_found.fields["identity"]
		new_character.dna.SE = newSE.Copy() //This is the default of enzymes so I think it's safe to go with.
		new_character.dna.UpdateSE()
		new_character.UpdateAppearance(newUI.Copy())//Now we configure their appearance based on their unique identity, same as with a DNA machine or somesuch.
	else//If they have no records, we just do a random DNA for them, based on their random appearance/savefile.
		new_character.dna.ready_dna(new_character)

	new_character.key = G_found.key

	/*
	The code below functions with the assumption that the mob is already a traitor if they have a special role.
	So all it does is re-equip the mob with powers and/or items. Or not, if they have no special role.
	If they don't have a mind, they obviously don't have a special role.
	*/

	//Two variables to properly announce later on.
	var/admin = key_name_admin(src)
	var/player_key = G_found.key

	var/datum/spawnpoint/spawnpoint = SSjobs.get_spawnpoint_for(new_character.client, new_character.mind.assigned_role)
	if (!spawnpoint.put_mob(new_character))
		message_admins("\blue [admin] has tried to respawn [player_key] as [new_character.real_name] but they declined to spawn in harmful environment.", 1)
		return

	//Now for special roles and equipment.
	SSjobs.equip_rank(new_character, new_character.mind.assigned_role)

	//Announces the character on all the systems, based on the record.
	if(!issilicon(new_character))//If they are not a cyborg/AI.
		if(!record_found && !player_is_antag(new_character.mind, only_offstation_roles = 1)) //If there are no records for them. If they have a record, this info is already in there. MODE people are not announced anyway.
			//Power to the user!
			if(alert(new_character,"Warning: No data core entry detected. Would you like to announce the arrival of this character by adding them to various databases, such as medical records?",,"No","Yes")=="Yes")
				CreateModularRecord(new_character)

			if(alert(new_character,"Would you like an active AI to announce this character?",,"No","Yes")=="Yes")
				call(/proc/AnnounceArrival)(new_character, new_character.mind.assigned_role)

	message_admins("\blue [admin] has respawned [player_key] as [new_character.real_name].", 1)

	to_chat(new_character, "You have been fully respawned. Enjoy the game.")
	AnnounceArrival(new_character, new_character.mind.assigned_role, spawnpoint.msg)	//will not broadcast if there is no message
	return new_character


/client/proc/spawn_mob_template()
	set category = "Fun"
	set name = "Spawn mob template"

	set desc = "Spawns a pre-saved mob template"

	if(!check_rights(R_ADMIN))
		return

	var/validTemplates = flist("data/mobTemplates/")

	var/chosenTemplate = input(usr, "Template") as null|anything in validTemplates + "Cancel"



	if(!chosenTemplate || chosenTemplate == "Cancel")
		return

	log_debug("Spawning [chosenTemplate]...")

	var/mob/living/carbon/human/M = new
	M.loc = usr.loc

	var/savefile/F = new("data/mobTemplates/" + chosenTemplate)

	var/contentsVar
	F["Contents"] >> contentsVar
	var/list/contents = params2list(contentsVar)

	var/namesVar
	F["names"] >> namesVar
	var/list/names = params2list(namesVar)

	var/descsVar
	F["descs"] >> descsVar
	var/list/descs = params2list(descsVar)

	var/parentsVar
	F["parents"] >> parentsVar
	var/list/parents = params2list(parentsVar)

	var/list/createdObjects = list()
	createdObjects.len = contents.len

	for(var/i in 1 to contents.len)
		var/iAsText = "[i]"
		var/objText = contents[iAsText]
		var/objPath = text2path(objText)
		if(!objPath)
			log_debug("Failed to desereralize [objText]")
		else
			//log_debug("Desseralized [i] - [objText]")
			var/obj/obj = new objPath
			createdObjects[i] = obj

			//if(istype(obj, /obj/item/weapon/gun))
			//	var/obj/item/weapon/gun/weapon = obj
			//	weapon.loadAmmoBestGuess()


			if(parents[iAsText] != "0")
				var/parentAsNum = text2num(parents[iAsText])
				//log_debug("Moving [obj] to [createdObjects[parentAsNum]]")
				obj.loc = createdObjects[parentAsNum]
			else
				//log_debug("Equipping [obj]")
				M.equip_to_mob_best_effort(obj)
			obj.name = names[iAsText]
			obj.desc = descs[iAsText]



	var/name
	F["Name"] >> name
	M.fully_replace_character_name(name)


	F["DNA"] >> M.dna
//	F["skill"] >> M.skill
	//F["form"] >> M.form
	F["species"] >> M.species
	//F["species_name"] >> M.species_name
	F["flavor_texts"] >> M.flavor_texts
	F["faction"] >> M.faction
	//F["body_markings"] >> M.body_markings

	M.dna.UpdateSE()
	M.dna.UpdateUI()
	M.sync_organ_dna()
	M.UpdateAppearance()//Now we configure their appearance based on their unique identity, same as with a DNA machine or somesuch.

	//A redraw for good measure
	M.update_icons()

	log_debug("Done")

/client/proc/save_mob_template(href, href_list, hsrc)
	if(href_list["saveTemplate"])
		if(!check_rights(R_ADMIN))
			return

		var/mob/living/carbon/human/H = locate(href_list["saveTemplate"])

		if(!istype(H))
			to_chat(usr, "This can only be done to instances of type /mob/living/carbon/human")
			return

		var/templateName = input("Please select name for template.","Template name",null) as null|text

		if(!templateName)
			to_chat(usr, "Mob doesn't exist anymore")
			return
		else if (H.ckey)
			to_chat(usr, "Mob must not have a ckey associated with it")
		else if(!templateName)
			return
		else
			var/savefile/F = new("data/mobTemplates/" + templateName)

			var/list/contentsList = list()
			var/list/names = list()
			var/list/descs = list()
			var/list/parents = list()
			var/itemCount =0

			for(var/atom/obj in H.contents)
				if(istype(obj, /obj/item))
					if(istype(obj, /obj/item/underwear))
						continue // no
					if(istype(obj, /obj/item/organ))
						continue // no

					itemCount += 1
					parents["[itemCount]"] = "0"

					names["[itemCount]"] = obj.name
					descs["[itemCount]"] =obj.desc
					contentsList["[itemCount]"] = obj.type
					//log_debug("logged [itemCount] - [obj.type] to file")

					if(istype(obj, /obj/item/weapon/storage))
						var/storageItemCount = itemCount
						var/obj/item/weapon/storage/bag = obj
						for(var/atom/bagObj in bag.contents)
							itemCount += 1
							parents["[itemCount]"] = "[storageItemCount]"

							contentsList["[itemCount]"] = bagObj.type
							names["[itemCount]"] = bagObj.name
							descs["[itemCount]"] = bagObj.desc
							//log_debug("logged [itemCount] - [bagObj.type] to file")

							if(istype(bagObj, /obj/item/weapon/storage))
								var/storageItemCount2 = itemCount
								var/obj/item/weapon/storage/bag2 = bagObj
								for(var/atom/bagObj2 in bag2.contents)
									itemCount += 1
									parents["[itemCount]"] = "[storageItemCount2]"

									contentsList["[itemCount]"] = bagObj2.type
									names["[itemCount]"] = bagObj2.name
									descs["[itemCount]"] = bagObj2.desc

									//log_debug("logged [itemCount] -  [bagObj2.type] to file")






			F["Name"] << H.name
			log_debug("Logged character name [H.name] to template")

			F["Contents"] << list2params(contentsList)
			F["names"] << list2params(names)
			F["descs"] << list2params(descs)
			F["parents"] << list2params(parents)
			F["DNA"] << H.dna
			//F["skill"] << H.skill
		//	F["form"] << H.form
		//	F["species_name"] << H.species_name
			F["species"] << H.species
			F["flavor_texts"] << H.flavor_texts
			F["faction"] << H.faction
		//	F["body_markings"] << H.body_markings

			//log_debug("Done!  [contentsList.len],[names.len],[descs.len],[parents.len]")

			//F << H

			//var/txtfile = file("data/mobTemplates/[templateName].txt")
			//F.ExportText("/",txtfile)

			to_chat(usr, "Template '[templateName]' saved successfully")















