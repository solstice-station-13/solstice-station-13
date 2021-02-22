/datum/species/vulpkanin
	name = SPECIES_VULP
	name_plural = SPECIES_VULP
	icobase = 'modular_solstice/icons/mob/human_races/species/vulpkanin/body.dmi'
	//deform = 'modular_solstice/icons/mob/human_races/species/vulpkanin/deformed_body.dmi' They don't have deformed icons. Hopefully this doesn't cause problems
	husk_icon = 'modular_solstice/icons/mob/human_races/species/vulpkanin/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/vulpkanin/preview.dmi'
	modular_tail = 'modular_solstice/icons/mob/human_races/species/vulpkanin/tail.dmi'
	tail = "vulptail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	default_ears = /datum/sprite_accessory/ears/vulp
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Vulpkanin are another of the animal-like races the Federation has discovered over the years. They were first discovered by NanoTrasen explorers centuries \
	ago. Since discovery, they've been occupied by the Terran Federation. Over those centuries, their old culture is indistinguishable from Terran culture, and their past \
	and cultural traditions are largely forgotten."

	spawn_flags = SPECIES_CAN_JOIN /*SPECIES_IS_RESTRICTED --why?*/ | SPECIES_IS_ICONBASE
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu


	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Vulpkanin do | did it -bear
		TAG_CULTURE = list(CULTURE_HUMAN_XENO)
	)

/datum/species/vulpkanin/proc/handle_coco(var/mob/living/carbon/human/M, var/datum/reagent/nutriment/coco, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[coco.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))
