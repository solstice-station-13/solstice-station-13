/datum/species/tajaran
	name = SPECIES_TAJ
	name_plural = "Sabelkyne"
	icobase = 'modular_solstice/icons/mob/human_races/species/tajaran/body.dmi'
	deform = 'modular_solstice/icons/mob/human_races/species/tajaran/deformed_body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/tajaran/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/tajaran/preview.dmi'
	modular_tail = 'modular_solstice/icons/mob/human_races/species/tajaran/tail.dmi'
	tail = "tajtail"
	default_ears = /datum/sprite_accessory/ears/taj //Variable seems to not work anyway.
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "The Sabelkyne are a mammalian species from the planet Almutahar, closely resembling felines. They are a divided species, with \
	two major subspecies; the Saulkyne and the Maunkyne. This description is a temporary placeholder."

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_xSKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN

	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	strength = STR_HIGH
	breath_pressure = 19 //larger species, needs slightly more oxygen
	slowdown = 0		//No change
	brute_mod = 1		//No change
	burn_mod = 0.9		//Reduced burn damage
	flash_mod = 1.4		//considerably more sensitive to flashes
	blood_volume = 550	//slightly more blood than normal

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = 1
		)

	blood_color = COLOR_BLOOD_HUMAN
	
	min_age = 18
	max_age = 150

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000
	
	heat_discomfort_level = 310
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 280
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your fur bristles against the cold."
		)
		
	available_cultural_info = list( //I can do ANYTHING! As a custom species, you can come from pretty much wherever you want!
		TAG_CULTURE = list(
			CULTURE_TAJ
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_FLEET,
			FACTION_CORPORATE,
			FACTION_INDIE_CONFED,
			FACTION_EXPEDITIONARY,
			FACTION_SPACECOPS,
			FACTION_NANOTRASEN,
			FACTION_XYNERGY,
			FACTION_HEPHAESTUS,
			FACTION_FREETRADE,
			FACTION_PCRC,
			FACTION_DAIS,
			FACTION_OTHER
		),
		TAG_RELIGION = list(
			RELIGION_OTHER,
			RELIGION_JUDAISM,
			RELIGION_HINDUISM,
			RELIGION_BUDDHISM,
			RELIGION_JAINISM,
			RELIGION_SIKHISM,
			RELIGION_ISLAM,
			RELIGION_CHRISTIANITY,
			RELIGION_BAHAI_FAITH,
			RELIGION_AGNOSTICISM,
			RELIGION_DEISM,
			RELIGION_ATHEISM,
			RELIGION_THELEMA,
			RELIGION_SPIRITUALISM,
			RELIGION_SHINTO,
			RELIGION_TAOISM
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_KINGSTON,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA
		)
	)

/datum/species/tajaran/proc/handle_coco(var/mob/living/carbon/human/M, var/datum/reagent/nutriment/coco, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[coco.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))
