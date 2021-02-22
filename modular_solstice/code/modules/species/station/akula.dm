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

	description = "Akula are a shark-like species from the planet Koster-4. Predictably, the name of the species was earned due to their appearance. The planet was occupied by \
	the Terran Federation shortly after discovery. The occupation has been ongoing for centuries, and Akula culture has long since been replaced by human culture."

	spawn_flags = SPECIES_IS_ICONBASE
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is.


	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Akula do | did it - bear
		TAG_CULTURE = list(CULTURE_HUMAN_XENO)
	)
	override_organ_types = list(BP_LUNGS = /obj/item/organ/internal/lungs/gills)
