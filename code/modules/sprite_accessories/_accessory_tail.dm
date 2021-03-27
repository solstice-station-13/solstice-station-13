/*
////////////////////////////
/  =--------------------=  /
/  == Tail Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/tail
	name = "You should not see this..."
	icon = 'modular_solstice/icons/mob/tails.dmi'
	do_colouration = 0 //Set to 1 to enable coloration using the tail color.

	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/extra_overlay2 // Icon state of a tertiary additional overlay to blend in.
	var/show_species_tail = 0 // If false, do not render species' tail.
	var/clothing_can_hide = 1 // If true, clothing with HIDETAIL hides it
	var/desc = "You should not see this..."
	var/ani_state // State when wagging/animated
	var/extra_overlay_w // Wagging state for extra overlay


////////////////////////////
// Other/Genemod Tails
////////////////////////////

/datum/sprite_accessory/tail/invisible
	name = "hide species-sprite tail"
	icon = null
	icon_state = null

////////////////////////////
// Snowflake Shit with no sprites/low quality	
////////////////////////////
/*
/datum/sprite_accessory/tail/kitty
	name = "kitty, colorable, downwards"
	desc = ""
	icon_state = "kittydown"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/kittyup
	name = "kitty, colorable, upwards"
	desc = ""
	icon_state = "kittyup"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/snag
	name = "xenomorph tail 1"
	desc = ""
	icon_state = "snag"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/xenotail
	name = "xenomorph tail 2"
	desc = ""
	icon_state = "xenotail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/eboop
	name = "EGN mech tail (dual color)"
	desc = ""
	icon_state = "eboop"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "eboop_mark"

/datum/sprite_accessory/tail/spade_color
	name = "spade-tail (colorable)"
	desc = ""
	icon_state = "spadetail-black"
	do_colouration = 1

/datum/sprite_accessory/tail/newtailmaw
	name = "new tailmaw (vwag)"
	desc = ""
	icon_state = "newtailmaw"
	ani_state = "newtailmaw_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/wolf_tail
	name = "Wolf Tail"
	desc = ""
	icon_state = "wolf_tail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
 /datum/sprite_accessory/tail/raccoon_tail
	name = "Raccoon gray tail"
	desc = ""
	icon_state = "raccoon_tail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/m_tail_synthliz_BEHINDstatic
	name = "Synthetic lizard tail"
	desc = ""
	icon_state = "m_tail_synthliz_BEHIND"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/m_tail_synthliz_BEHIND
	name = "Synthetic lizard tail, animated"
	desc = ""
	icon_state = "m_tail_synthliz_BEHIND"
	ani_state = "m_tailwag_synthliz_BEHIND"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/Plugtail
	name = "Synthetic plug tail"
	desc = ""
	icon_state = "Plugtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "PlugtailMarking"
	extra_overlay2 = "PlugtailMarking2"

/datum/sprite_accessory/tail/Segmentedtail
	name = "Segmented tail, animated"
	desc = ""
	icon_state = "Segmentedtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Segmentedtailmarking"
	ani_state = "Segmentedtail_w"
	extra_overlay_w = "Segmentedtailmarking_w"

/datum/sprite_accessory/tail/Segmentedlights
	name = "Segmented tail, animated synth"
	desc = ""
	icon_state = "Segmentedtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "Segmentedlights"
	ani_state = "Segmentedtail_w"
	extra_overlay_w = "Segmentedlights_w"
*/
