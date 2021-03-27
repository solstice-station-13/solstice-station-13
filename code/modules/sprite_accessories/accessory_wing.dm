/*
////////////////////////////
/  =--------------------=  /
/  == Wing Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/wing
	name = "You should not see this..."
	icon = 'modular_solstice/icons/mob/wings.dmi'
	do_colouration = 0 //Set to 1 to enable coloration using the tail color.

	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/extra_overlay2 // Icon state of a tertiary additional overlay to blend in.
	var/clothing_can_hide = 1 // If true, clothing with HIDETAIL hides it. If the clothing is bulky enough to hide a tail, it should also hide wings.
	// var/show_species_tail = 1 // Just so // TODO - Seems not needed ~Leshana
	var/desc = "You should not see this..."
	var/ani_state // State when flapping/animated
	var/extra_overlay_w // Flapping state for extra overlay

////////////////////////////
// Genemod Wings
////////////////////////////

/datum/sprite_accessory/wing/none //Temp fix.
	name = "NONE"
	desc = ""
	icon_state = null

/datum/sprite_accessory/wing/featheredlarge
	name = "Genemod, large feathered wings (colorable)"
	desc = ""
	icon_state = "feathered2"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/wing/feathered
	name = "Genemod, feathered wings colorable"
	desc = ""
	icon_state = "feathered"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/feathered_medium
	name = "Genemod, medium feathered wings colorable"
	desc = ""
	icon_state = "feathered3"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/bat_black
	name = "Genemod, bat wings black"
	desc = ""
	icon_state = "bat-black"

/datum/sprite_accessory/wing/bat_red
	name = "Genemod, bat wings red"
	desc = ""
	icon_state = "bat-red"

/datum/sprite_accessory/wing/bat_purpley_yw
	name = "Genemod, bat wings purple"
	desc = ""
	icon_state = "succubus-purple"

/datum/sprite_accessory/wing/bat_color
	name = "Genemod, bat wings colorable"
	desc = ""
	icon_state = "bat-color"
	do_colouration = 1

/datum/sprite_accessory/wing/feathered
	name = "feathered wings, colorable"
	desc = ""
	icon_state = "feathered"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

////////////////////////////
// Bug Wings
////////////////////////////

/datum/sprite_accessory/wing/spider_legs //Not really /WINGS/ but they protrude from the back, kinda. Might as well have them here.
	name = "Genemod, spider legs"
	desc = ""
	icon_state = "spider-legs"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/wing/moth
	name = "Genemod, moth wings"
	desc = ""
	icon_state = "moth"

/datum/sprite_accessory/wing/mothc
	name = "Genemod, moth wings colorable"
	desc = ""
	icon_state = "moth"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/wing/moth_full
	name = "Genemod, moth antenna and wings"
	desc = ""
	icon_state = "moth_full"

/datum/sprite_accessory/wing/moth_full_gray
	name = "Genemod, moth antenna and wings colorable"
	desc = ""
	icon_state = "moth_full_gray"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/Moth_royal
	name = "Genemod, moth royal"
	desc = ""
	icon_state = "Moth_royal"

/datum/sprite_accessory/wing/Moth_royal_colorable
	name = "Genemod, moth royal colorable"
	desc = ""
	icon_state = "Moth_royal_colorable"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/dragonfly
	name = "Genemod, dragonfly"
	desc = ""
	icon_state = "dragonfly"
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/beewings
	name = "Genemod, bee wings"
	desc = ""
	icon_state = "beewings"

////////////////////////////
// Snowflake shit with no sprites or low quality
////////////////////////////
/*
/datum/sprite_accessory/wing/harpywings
	name = "harpy wings, colorable"
	desc = ""
	icon_state = "harpywings"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/Harpywings_alt
	name = "harpy wings alt, archeopteryx"
	desc = ""
	icon_state = "Harpywings_alt"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Neckfur"
	extra_overlay2 = "Harpywings_altmarkings"

/datum/sprite_accessory/wing/Harpywings_Bat
	name = "harpy wings, bat"
	desc = ""
	icon_state = "Harpywings_Bat"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Neckfur"
	extra_overlay2 = "Harpywings_BatMarkings"
	
/datum/sprite_accessory/wing/liquidfirefly_gazer
	name = "gazer eyestalks"
	desc = ""
	icon_state = "liquidfirefly-eyestalks"
	
/datum/sprite_accessory/wing/snag
	name = "xenomorph backplate"
	desc = ""
	icon_state = "snag-backplate"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/wing/Neckfur
	name = "Neck fur"
	desc = ""
	icon_state = "Neckfur"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/wing/nevrean
	name = "nevrean wings/fantail"
	desc = ""
	icon_state = "nevrean_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/wing/sepulchre_yw
	name = "demon wings, red"
	desc = ""
	icon_state = "sepulchre_wings"

/datum/sprite_accessory/wing/sepulchre_c_yw
	name = "demon wings (colorable)"
	desc = ""
	icon_state = "sepulchre_wingsc"
	do_colouration = 1
	
/datum/sprite_accessory/wing/drago_wing
	name = "Cybernetic Dragon wings"
	desc = ""
	icon_state = "drago_wing"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "drago_wing_2"

/datum/sprite_accessory/wing/cyberdragon
	name = "Cyber dragon wing (colorable)"
	desc = ""
	icon_state = "cyberdragon_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/cyberdragon_red
	name = "Cyber dragon wing (red)"
	desc = ""
	icon_state = "cyberdragon_red_s"
	do_colouration = 0

/datum/sprite_accessory/wing/cyberdoe
	name = "Cyber doe wing"
	desc = ""
	icon_state = "cyberdoe_s"
	do_colouration = 0
/*
