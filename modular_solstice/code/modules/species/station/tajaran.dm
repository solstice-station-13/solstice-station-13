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
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN

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
	
	permitted_ears  = list("Plain Sabelkyne Ears",
		"Sabelkyne Bangs",
		"Sabelkyne Bob",
		"Sabelkyne Braid",
		"Sabelkyne Clean",
		"Sabelkyne Curly",
		"Sabelkyne Fingerwave",
		"Sabelkyne Greaser",
		"Sabelkyne Housewife",
		"Sabelkyne Long",
		"Sabelkyne Messy",
		"Sabelkyne Mohawk",
		"Sabelkyne Plait",
		"Sabelkyne Rat Tail",
		"Sabelkyne Shaggy",
		"Sabelkyne Spiky",
		"Sabelkyne Straight",
		"Sabelkyne Victory",
		"Sabelkyne ears, colorable"
		)
	permitted_tail  = list("tajaran tail")
	permitted_wings = list()

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
