/datum/species/sergal
	name = SPECIES_SERGAL
	name_plural = SPECIES_SERGAL
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'modular_solstice/icons/mob/human_races/species/sergal/body.dmi'
	deform = 'modular_solstice/icons/mob/human_races/species/sergal/deformed_body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/sergal/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/sergal/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "sergtail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/claws, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Monkey"
	darksight_range = 3
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	breath_pressure = 17
	slowdown = -0.25
	brute_mod = 1.20
	burn_mod = 1.20
	blood_volume = 560

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5

	min_age = 18
	max_age = 100

	description = "Sergals are the native race of a planet named Tal. The planet, since Federation annexation, has sprawling megacities where their cities of old stood \
	and extensive farmland as rural threats were driven back and exterminated by Federation troops. Today the planet is run by a largely hands off, democratic system \
	that encourages free trade and continues the relatively libertarian policies of the Federation as a whole. Sergals, meanwhile, mostly enjoy extremely high standards \
	of living and many have found new homes among the stars and on various Federation worlds."

	cold_level_1 = 260 //Default 260 - Lower is better
	cold_level_2 = 200 //Default 200
	cold_level_3 = 120 //Default 120

	heat_level_1 = 370 //Default 360 - Higher is better
	heat_level_2 = 410 //Default 400
	heat_level_3 = 1010 //Default 1000

	spawn_flags = SPECIES_IS_ICONBASE | SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_SERGAL
	base_color = "#066000"
	blood_color = "#660000"

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	heat_discomfort_level = 320
	heat_discomfort_strings = list(
		"You feel warm.",
		"You feel the heat sink into your bones.",
		"You feel your skin prickle in the heat."
		)

	cold_discomfort_level = 292
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel cold and sluggish.",
		"Your fur bristles against the cold."
		)
	breathing_sound = 'sound/voice/monkey.ogg'

	descriptors = list(
		/datum/mob_descriptor/height = 1,
		/datum/mob_descriptor/build = 1
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_SERGAL,
			CULTURE_SERGAL_HUMANIZED,
			CULTURE_SERGAL_RURAL	
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_TAL,
			HOME_SYSTEM_OTHER,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_TERSTEN,
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_FLEET,
			FACTION_EXPEDITIONARY,
			FACTION_FREETRADE,
			FACTION_CORPORATE,
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_OTHER,
			RELIGION_SPIRITUALISM,
			RELIGION_SHINTO,
			RELIGION_TAOISM
		)
	)

	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze, /decl/emote/audible/howl) = 75,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 25,
		)

/datum/species/sergal/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/sergal/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_SERGAL
