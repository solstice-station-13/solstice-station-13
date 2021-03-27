/*
	Hello and welcome to solsticestation sprite_accessories: For a more general overview
	please read sprite_accessories.dm. This file is for ears and tails.
	This is intended to be friendly for people with little to no actual coding experience.
	!!WARNING!!: changing existing accessory information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/

// Add Additional variable onto sprite_accessory
/datum/sprite_accessory
	// Ckey of person allowed to use this, if defined.
	var/list/ckeys_allowed = null

/*
////////////////////////////
/  =--------------------=  /
/  == Ear Definitions  ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/ears
	name = "You should not see this..."
	icon = 'modular_solstice/icons/mob/ears.dmi'
	do_colouration = 0 // Set to 1 to blend (ICON_ADD) hair color
	
	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/desc = "You should not see this..."

////////////////////////////
// Snowflake Shit with no sprites/low quality	
////////////////////////////
/*
/datum/sprite_accessory/ears/squirrelhc
	name = "squirrel, colorable"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/zears
	name = "jagged ears"
	desc = ""
	icon_state = "zears"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/elfs
	name = "elven ears"
	desc = ""
	icon_state = "elfs"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/molenar_kitsune
	name = "quintail kitsune ears"
	desc = ""
	icon_state = "molenar-kitsune"

/datum/sprite_accessory/ears/kittyhc
	name = "kitty, colorable"
	desc = ""
	icon_state = "kitty"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "kittyinner"

/datum/sprite_accessory/ears/molenar_deathclaw
	name = "deathclaw ears"
	desc = ""
	icon_state = "molenar-deathclaw"

/datum/sprite_accessory/ears/miria_fluffdragon
	name = "fluffdragon ears"
	desc = ""
	icon_state = "miria-fluffdragonears"

/datum/sprite_accessory/ears/miria_kitsune
	name = "kitsune ears"
	desc = ""
	icon_state = "miria-kitsuneears"

/datum/sprite_accessory/ears/runac
	name = "fennecsune ears"
	desc = ""
	icon_state = "runac"

/datum/sprite_accessory/ears/kerena
	name = "wingwolf ears"
	desc = ""
	icon_state = "kerena"

/datum/sprite_accessory/ears/rosey
	name = "tritail kitsune ears"
	desc = ""
	icon_state = "rosey"

/datum/sprite_accessory/ears/aronai
	name = "aronai ears/head"
	desc = ""
	icon_state = "aronai"

/datum/sprite_accessory/ears/holly
	name = "tigress ears"
	desc = ""
	icon_state = "tigressears"

/datum/sprite_accessory/ears/molenar_inkling
	name = "teal mature inkling hair"
	desc = ""
	icon_state = "molenar-tentacle"

/datum/sprite_accessory/ears/alurane
	name = "alurane ears/hair"
	desc = ""
	icon_state = "alurane-ears"
*/
