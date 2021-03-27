/////////////////////
// Horn Stuff
/////////////////////

/datum/sprite_accessory/hair/taj
	name = "Sabelkyne Horns"
	icon = 'modular_solstice/icons/mob/human_races/species/humanathi/hair.dmi'
	icon_state = "horns_simple"
	blend = ICON_MULTIPLY
	species_allowed = list(SPECIES_TAJ,SPECIES_CUSTOM)

/datum/sprite_accessory/hair/taj/horns_short
	name = "Sabelkyne Short Horns"
	icon_state = "horns_short"

/datum/sprite_accessory/hair/taj/horns_curved
	name = "Sabelkyne Curved Horns"
	icon_state = "horns_curved"

/datum/sprite_accessory/hair/taj/horns_ram
	name = "Sabelkyne Ram Horns"
	icon_state = "horns_ram"
	
/datum/sprite_accessory/hair/taj2
	name = "You should not see this..."
	icon = 'modular_solstice/icons/mob/ears.dmi'
	do_colouration = 0 // Set to 1 to blend (ICON_ADD) hair color
	
	var/color_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/desc = "You should not see this..."

/datum/sprite_accessory/ears/taj2/demon
	icon_state = "demon-horns1_c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_TAJ,SPECIES_CUSTOM)

/datum/sprite_accessory/hair/taj2/oni_h1_c
	name = "Sabelkyne, small horns colorable"
	icon_state = "oni-h1_c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/hair/taj2/demon_horns2
	name = "Sabelkyne, short horns colorable(outward)"
	icon_state = "demon-horns2"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/hair/taj2/dragon_horns
	name = "Sabelkyne, long horns colorable"
	icon_state = "dragon-horns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/hair/taj2/m_ipc_antenna_synth_thick_ADJ
	name = "Sabelkyne, long horns thick"
	icon_state = "m_ipc_antenna_synth_thick_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "m_ipc_antenna_synth_thicklight_ADJ"

/datum/sprite_accessory/hair/taj2/m_ipc_antenna_synth_curled_ADJ
	name = "Sabelkyne, thin horns curly"
	icon_state = "m_ipc_antenna_synth_curled_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

// Markings
/datum/sprite_accessory/marking/taj
	name = "Socks Coloration (Taj)"
	icon_state = "taj_pawsocks"
	species_allowed = list(SPECIES_TAJ,SPECIES_CUSTOM)
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/taj/paw_socks
	name = "Socks Coloration (Generic)"
	icon_state = "pawsocks"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/taj/belly_hands_feet
	name = "Hands/Feet/Belly Color (Minor)"
	icon_state = "bellyhandsfeetsmall"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/taj/hands_feet_belly_full
	name = "Hands/Feet/Belly Color (Major)"
	icon_state = "bellyhandsfeet"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/taj/hands_feet_belly_full_female
	name = "Hands,Feet,Belly Color (Major, Female)"
	icon_state = "bellyhandsfeet_female"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/taj/patches
	name = "Color Patches"
	icon_state = "patches"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/taj/patchesface
	name = "Color Patches (Face)"
	icon_state = "patchesface"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/tiger_stripes
	name = "Tiger Stripes"
	icon_state = "tiger"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/taj/tigerhead
	name = "Tiger Stripes (Head, Minor)"
	icon_state = "tigerhead"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/tigerface
	name = "Tiger Stripes (Head, Major)"
	icon_state = "tigerface"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/belly
	name = "Belly Fur (Taj)"
	icon_state = "taj_belly"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/taj/bellyfull
	name = "Belly Fur Wide (Taj)"
	icon_state = "taj_bellyfull"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/taj/earsout
	name = "Outer Ear (Taj)"
	icon_state = "taj_earsout"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/earsin
	name = "Inner Ear (Taj)"
	icon_state = "taj_earsin"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/nose
	name = "Nose Color (Taj)"
	icon_state = "taj_nose"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/crest
	name = "Chest Fur Crest (Taj)"
	icon_state = "taj_crest"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/taj/muzzle
	name = "Muzzle Color (Taj)"
	icon_state = "taj_muzzle"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/face
	name = "Cheeks Color (Taj)"
	icon_state = "taj_face"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj/all
	name = "All Taj Head (Taj)"
	icon_state = "taj_all"
	body_parts = list(BP_HEAD)
