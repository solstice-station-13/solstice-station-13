// Currently uses slightly modified Vulpkanin sprites as default. Sprite change may be worked on in the future.
// A lot of this is WIP, but the framework is there.
/datum/species/duroj
	name = SPECIES_DUROJ
	name_plural = SPECIES_DUROJ
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'modular_solstice/icons/mob/human_races/species/duroj/body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/duroj/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/duroj/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "beartail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	default_ears = /datum/sprite_accessory/ears/duroj
	hidden_from_codex = FALSE
	
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Another of the human genemods, the Duroj - Albanian for 'bear', amusingly - were a series of Russian designed genemods early in the 22nd century. \
	Developed as part of the Russian plan to reach the stars, the distinctly ursine Duroj were made to have considerable insulation against the cold and fortified with \
	considerably greater strength. The average Duroj is a large, lumbering beast and tends to stand somewhere between six and a half feet to seven and a half feet depending \
	on what subspecies of bear the individual has. Brown bear, black bear, and polar bear genetics were the dominant genes in use for the program. While they are hardy in the \
	cold and strong, they are still susceptile to even slightly warmer environments."

	spawn_flags = SPECIES_CAN_JOIN 
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	strength = STR_VHIGH
	breath_pressure = 20
	slowdown = 0.2		//minor speed reduction
	brute_mod = 0.8		//minor brute reduction
	burn_mod = 1.3		//substantial burn increase
	flash_mod = 1.2		//more sensitive to flashes
	blood_volume = 650	//more blood than normal

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 2.5		//hungry much faster

	min_age = 18
	max_age = 100

	cold_level_1 = 240 //Default 260 - Lower is better
	cold_level_2 = 180 //Default 200
	cold_level_3 = 100 //Default 120

	heat_level_1 = 320 //Default 360 - Higher is better
	heat_level_2 = 360 //Default 400
	heat_level_3 = 900 //Default 1000
	
	heat_discomfort_level = 300
	heat_discomfort_strings = list(
		"You feel uncomfortably warm.",
		"You feel begin to feel tired.",
		"Your fur is starting to soak."
		)

	cold_discomfort_level = 260
	cold_discomfort_strings = list(
		"You feel comfortably cool.",
		"You feel invigorated by the cold.",
		"Your fur protects against the cold."
		)
		
	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2
		)

	blood_color = "#660000"

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_DUROJ_CHAYKODNYRURAL,
			CULTURE_DUROJ_CHAYKODNYIMPERIAL,
			CULTURE_DUROJ_VOIDBORN,
			CULTURE_DUROJ_CHAYKODNYFEDERAL,
			CULTURE_DUROJ_EPSILONERIDANI
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_ZAZHITOCHNOST_PLANET,
			HOME_SYSTEM_ZAZHITOCHNOST_SPACE,
			HOME_SYSTEM_EPSILONERIDANI,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_OTHER			
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_FLEET,
			FACTION_EXPEDITIONARY,
			FACTION_FREETRADE,
			FACTION_CORPORATE,
			FACTION_NANOTRASEN,
			FACTION_HEPHAESTUS,
			FACTION_XYNERGY,
			FACTION_DAIS,
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_EASTERNORTHODOX,
			RELIGION_CATHOLICISM,
			RELIGION_CHRISTIANITY
		)
	)
