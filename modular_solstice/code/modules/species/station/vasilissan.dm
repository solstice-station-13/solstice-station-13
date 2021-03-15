/datum/species/vasilissan
	name = SPECIES_VASS
	name_plural = "Vasilissans"
	icobase = 'modular_solstice/icons/mob/human_races/species/vasilissan/body.dmi'
	deform = 'modular_solstice/icons/mob/human_races/species/vasilissan/deformed_body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/vasilissan/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/vasilissan/preview.dmi'
	modular_tail = 'modular_solstice/icons/mob/human_races/species/vasilissan/tail.dmi'
	tail = "spidertail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Vasilissans are a race of spider-like people. They have the distinction of being one of the only races that was spared from a war upon being \
	discovered. This was due to already being in the atomic era when they were found by the now-defunct NanoTrasen Surveyor Corps. They've integrated rather well \
	into interstellar society, with only a few hiccups in political relations, mostly involving the fact they are spiders."

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_ICONBASE
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR | SPECIES_IS_WHITELISTED

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu  | do these guys even have junk in their groin??? -cebu


	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Vasilissans do | did it -bear
		TAG_CULTURE = list(CULTURE_HUMAN_XENO)
	)
