/////////////////////
// Ear Stuff
/////////////////////

/datum/sprite_accessory/ears/vulp
	name = "Vulpkanin, dual-color"
	desc = ""
	icon_state = "vulp"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulp-inner"
	species_allowed = list(SPECIES_VULP,SPECIES_KHAZAN,SPECIES_HUMAN)

/datum/sprite_accessory/ears/vulp/foxears
	name = "Vulpkanin, highland ears"
	desc = ""
	icon_state = "foxears"

/datum/sprite_accessory/ears/vulp/fenears
	name = "Vulpkanin, flatland ears"
	desc = ""
	icon_state = "fenears"
	
/datum/sprite_accessory/ears/vulp/foxearshc
	name = "Vulpkanin, highland ears colorable"
	desc = ""
	icon_state = "foxearshc"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/vulp/fenearshc
	name = "Vulpkanin, flatland ears colorable"
	desc = ""
	icon_state = "fenearshc"
	extra_overlay = "fenears-inner"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/vulp/otie
	name = "Vulpkanin, pointed ears colorable"
	desc = ""
	icon_state = "otie"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "otie-inner"
	
/datum/sprite_accessory/ears/vulp/shock
	name = "Vulpkanin, hound ears"
	desc = ""
	icon_state = "shock"
	
/datum/sprite_accessory/ears/vulp/wolfhc
	name = "Vulpkanin, lupine colorable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

/////////////////////
// Tail Stuff
/////////////////////

/datum/sprite_accessory/tail/vulp
	name = "Vulpkanin, normal tail (vwag)"
	desc = ""
	icon_state = "vulptail"
	ani_state = "vulptail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulptail_mark"
	extra_overlay_w = "vulptail_mark_w"
	species_allowed = list(SPECIES_VULP,SPECIES_HUMAN)

/datum/sprite_accessory/tail/vulp/wolf
	name = "Vulpkanin, lupine colorable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

/datum/sprite_accessory/tail/vulp/crossfox
	name = "Vulpkanin, cross fox"
	desc = ""
	icon_state = "crossfox"
  
/datum/sprite_accessory/tail/vulp/curltail
	name = "Vulpkanin, curltail (vwag)"
	desc = ""
	icon_state = "curltail"
	ani_state = "curltail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "curltail_mark"
	extra_overlay_w = "curltail_mark_w"

/datum/sprite_accessory/tail/vulp/shorttail
	name = "Vulpkanin, shorttail (vwag)"
	desc = ""
	icon_state = "straighttail"
	ani_state = "straighttail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulp/otietail
	name = "Vulpkanin, small tail (vwag)"
	desc = ""
	icon_state = "otie"
	ani_state = "otie_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulp/ztail
	name = "Vulpkanin, jagged flufftail"
	desc = ""
	icon_state = "ztail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/vulp/vulpan_alt
	name = "Vulpkanin, alt style colorable"
	desc = ""
	icon_state = "vulptail_alt"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/vulp/fox_tail_s
	name = "Vulpkanin, fox tail"
	desc = ""
	icon_state = "fox_tail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulp/fennec_tail_s
	name = "Vulpkanin, fennec tail"
	desc = ""
	icon_state = "fennec_tail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/vulp/vulpkanin_alt_color
	name = "Vulpkanin, alternate"
	desc = ""
	icon_state = "vulpkanin_alt_color"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulpkanin_alt_color_tips"
	ani_state = "vulpkanin_alt_color_w"
	extra_overlay_w = "vulpkanin_alt_color_tips_w"

/////////////////////
// Markings
/////////////////////

/datum/sprite_accessory/marking/vulp/
		name = "Vulpkanin, belly fur"
		icon_state = "vulp_belly"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_CHEST,BP_GROIN)
		species_allowed = list(SPECIES_VULP,SPECIES_HUMAN)

/datum/sprite_accessory/marking/vulp/vulp_fullbelly
		name = "Vulpkanin, full belly fur"
		icon_state = "vulp_fullbelly"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vulp/vulp_crest
		name = "Vulpkanin, belly crest"
		icon_state = "vulp_crest"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vulp/vulp_nose
		name = "Vulpkanin, nose"
		icon_state = "vulp_nose"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/snoutstripe
		name = "Vulpkanin, snout stripe"
		icon_state = "snoutstripe"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/vulp_face
		name = "Vulpkanin, face"
		icon_state = "vulp_face"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/vulp_earsface
		name = "Vulpkanin, ears and face"
		icon_state = "vulp_earsface"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/vulp_all
		name = "Vulpkanin, all head highlights"
		icon_state = "vulp_all"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)
		
/datum/sprite_accessory/marking/vulp/otie_face
		name = "Vulpkanin, alt face"
		icon_state = "otieface"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/otie_nose
		name = "Vulpkanin, alt nose"
		icon_state = "otie_nose"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/otienose_lite
		name = "Vulpkanin, alt short nose"
		icon_state = "otienose_lite"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/jagged_teeth
		name = "Vulpkanin, jagged teeth"
		icon_state = "jagged"
		body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vulp/otie_socks
		name = "Vulpkanin, fingerless socks"
		icon_state = "otiesocks"
		color_blend_mode = ICON_MULTIPLY
		body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)
