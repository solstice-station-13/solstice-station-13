/////////////////////
// Ear Stuff
/////////////////////

/datum/sprite_accessory/ears/akula
	name = "Akula, sleek ears"
	desc = ""
	icon_state = "sleek"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_AKULA)

/////////////////////
// Tail Stuff
/////////////////////

/datum/sprite_accessory/tail/akula
	name = "Akula, normal tail"
	desc = ""
	icon_state = "aktail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_AKULA)

/////////////////////
// Markings
/////////////////////

/datum/sprite_accessory/marking/akula
	name = "Akula, snout"
	icon_state = "sharkface"
	color_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)
	species_allowed = list(SPECIES_AKULA)
