// Currently uses Vulpkanin sprites as default. Sprite change may be worked on in the future.
// A lot of this is WIP, but the framework is there.
/datum/species/khazan
	name = SPECIES_KHAZAN
	name_plural = SPECIES_KHAZAN
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'modular_solstice/icons/mob/human_races/species/khazan/body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/khazan/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/khazan/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "vulptail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	default_ears = /datum/sprite_accessory/ears/vulp
	hidden_from_codex = FALSE
	
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "The Khazan are a somewhat unique, canid-like species from Cezh’jedihn. They are large and largely look like a mix between a hyena and a jackal, if then \
	upsized to over eight and a half feet tall if they stood straight. Instead, they tend to be hunched over and closer to seven feet in height. The species are notable for \
	their traditions of unusual form of meritocracy and dominance games."

	spawn_flags = SPECIES_CAN_JOIN 
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	strength = STR_HIGH
	breath_pressure = 18
	slowdown = -0.2		//minor speed boost
	brute_mod = 0.9		//minor brute reduction
	burn_mod = 1.1		//minor burn increase
	flash_mod = 1.2		//more sensitive to flashes
	blood_volume = 650	//more blood than normal

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5		//hungry faster

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

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_KHAZAN,
			CULTURE_KHAZAN_URBAN,
			CULTURE_KHAZAN_FEDERAL,
			CULTURE_KHAZAN_EPSILONERIDANI
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_CEZHJEDIHN,
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
			RELIGION_KHAZAN
		)
	)
