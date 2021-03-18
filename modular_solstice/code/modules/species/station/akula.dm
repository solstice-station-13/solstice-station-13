/datum/species/akula
	name = SPECIES_AKULA
	name_plural = SPECIES_AKULA
	icobase = 'modular_solstice/icons/mob/human_races/species/akula/body.dmi'
	deform = 'modular_solstice/icons/mob/human_races/species/akula/deformed_body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/akula/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/akula/preview.dmi'
	modular_tail = 'modular_solstice/icons/mob/human_races/species/akula/tail.dmi'
	tail = "aktail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick,/datum/unarmed_attack/tail, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)

	description = "Where the Tritonian is built for practicality, mixing insulation and protection for cold and aquatic environments, the Akula were designed for improved \
	swimming, water breathing, and greater capability underwater in exchange for only baseline human hardiness. Specifically made for ocean worlds, and other watery \
	environments, Akula can be found throughout much of the Federation. They are capable of survival underwater and on the surface. They are somewhat more susceptible to the \
	cold, but much prefer warmer environments. Similar to the broader genemodder category, Akula are very divergent from baseline humanity. Where the Tritonians are still \
	vaguely human, Akula are distinctly animalistic."

	spawn_flags = SPECIES_CAN_JOIN 
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is.
	
	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000
	
	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		)

	cold_discomfort_level = 273
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		)

	blood_color = "#990000"
		
	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_HUMAN_MARTIAN,
			CULTURE_HUMAN_MARSTUN,
			CULTURE_HUMAN_LUNAPOOR,
			CULTURE_HUMAN_LUNARICH,
			CULTURE_HUMAN_VENUSIAN,
			CULTURE_HUMAN_VENUSLOW,
			CULTURE_HUMAN_BELTER,
			CULTURE_HUMAN_PLUTO,
			CULTURE_HUMAN_EARTH,
			CULTURE_HUMAN_CETI,
			CULTURE_HUMAN_EPSILONERIDANI,
			CULTURE_HUMAN_SPACER,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_CONFED,
			CULTURE_HUMAN_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_EARTH,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_HELIOS,
			HOME_SYSTEM_TERRA,
			HOME_SYSTEM_EPSILONERIDANI,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_LORRIMAN,
			HOME_SYSTEM_CINU,
			HOME_SYSTEM_YUKLID,
			HOME_SYSTEM_LORDANIA,
			HOME_SYSTEM_KINGSTON,
			HOME_SYSTEM_GAIA,
			HOME_SYSTEM_MAGNITKA,
			HOME_SYSTEM_STATELESS,
			HOME_SYSTEM_OTHER,
			HOME_SYSTEM_DEEP_SPACE
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_INDIE_CONFED,
			FACTION_NANOTRASEN,
			FACTION_FREETRADE,
			FACTION_HEPHAESTUS,
			FACTION_XYNERGY,
			FACTION_FLEET,
			FACTION_EXPEDITIONARY,
			FACTION_PCRC,
			FACTION_SAARE,
			FACTION_CORPORATE,
			FACTION_DAIS,
			FACTION_OTHER,
			FACTION_SPACECOPS
		),
		TAG_RELIGION = list(
			RELIGION_CHRISTIANITY,
			RELIGION_CATHOLICISM,
			RELIGION_EASTERNORTHODOX,
			RELIGION_JUDAISM,
			RELIGION_HINDUISM,
			RELIGION_BUDDHISM,
			RELIGION_SIKHISM,
			RELIGION_JAINISM,
			RELIGION_ISLAM,
			RELIGION_BAHAI_FAITH,
			RELIGION_THELEMA,
			RELIGION_SHINTO,
			RELIGION_TAOISM,
			RELIGION_SPIRITUALISM,
			RELIGION_OTHER,
			RELIGION_ATHEISM,
			RELIGION_DEISM,
			RELIGION_AGNOSTICISM
		)
	)
	
	override_organ_types = list(BP_LUNGS = /obj/item/organ/internal/lungs/gills)
