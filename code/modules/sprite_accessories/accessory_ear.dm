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
// Other/Genemod Ears
////////////////////////////

/datum/sprite_accessory/ears/mousehc
	name = "Genemod, mouse colorable"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "mouseinner"
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/mousehcno
	name = "Genemod, mouse colorable no inner"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/bunnyhc
	name = "Genemod, bunny colorable"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/antlers
	name = "Genemod deer antlers"
	desc = ""
	icon_state = "antlers"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/antlers_e
	name = "Genemod, deer antlers with ears"
	desc = ""
	icon_state = "cow-nohorns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "antlers_mark"
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/smallantlers
	name = "Genemod, deer small antlers"
	desc = ""
	icon_state = "smallantlers"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/smallantlers_e
	name = "Genemod, deer small antlers with ears"
	desc = ""
	icon_state = "smallantlers"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "deer"
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/deer
	name = "Genemod, deer ears"
	desc = ""
	icon_state = "deer"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/cow
	name = "Genemod, cow horns"
	desc = ""
	icon_state = "cow"
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/cowc
	name = "Genemod, cow horns colorable"
	desc = ""
	icon_state = "cow-c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/cow_nohorns
	name = "Genemod, cow no horns"
	desc = ""
	icon_state = "cow-nohorns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/caprahorns
	name = "Genemod, caprine horns"
	desc = ""
	icon_state = "caprahorns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

/datum/sprite_accessory/ears/bunny_floppy
	name = "floppy bunny ears (colorable)"
	desc = ""
	icon_state = "floppy_bun"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)

////////////////////////////
// Bug Stuff/Antennae
////////////////////////////

/datum/sprite_accessory/ears/antennae
	name = "antennae, colorable"
	desc = ""
	icon_state = "antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_CUSTOM)
	
/datum/sprite_accessory/ears/antennae/bee
	name = "antennae"
	desc = ""
	icon_state = "bee"

/datum/sprite_accessory/ears/antennae/curly_bug
	name = "curly antennae, colorable"
	desc = ""
	icon_state = "curly_bug"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/antennae/lilimoth_antennae
	name = "citheronia antennae"
	desc = ""
	icon_state = "lilimoth_antennae"
	
/datum/sprite_accessory/ears/antennae/dual_robot
	name = "synth antennae, colorable"
	desc = ""
	icon_state = "dual_robot_antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/antennae/right_robot
	name = "right synth antennae, colorable"
	desc = ""
	icon_state = "right_robot_antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/antennae/left_robot
	name = "left synth antennae, colorable"
	desc = ""
	icon_state = "left_robot_antennae"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

////////////////////////////
// Taj Ears
////////////////////////////

/datum/sprite_accessory/ears/taj/
	name = "Plain Sabelkyne Ears"
	icon_state = "ears_plain"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_TAJ)

/datum/sprite_accessory/ears/taj/bangs
	name = "Sabelkyne Bangs"
	icon_state = "hair_bangs"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/bob
	name = "Sabelkyne Bob"
	icon_state = "hair_bob"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/braid
	name = "Sabelkyne Braid"
	icon_state = "hair_braid"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/clean
	name = "Sabelkyne Clean"
	icon_state = "hair_clean"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/curly
	name = "Sabelkyne Curly"
	icon_state = "hair_curly"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/fingerwave
	name = "Sabelkyne Fingerwave"
	icon_state = "hair_fingerwave"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/greaser
	name = "Sabelkyne Greaser"
	icon_state = "hair_greaser"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/housewife
	name = "Sabelkyne Housewife"
	icon_state = "hair_housewife"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/long
	name = "Sabelkyne Long"
	icon_state = "hair_long"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/messy
	name = "Sabelkyne Messy"
	icon_state = "hair_messy"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/mohawk
	name = "Sabelkyne Mohawk"
	icon_state = "hair_mohawk"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/plait
	name = "Sabelkyne Plait"
	icon_state = "hair_plait"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/rattail
	name = "Sabelkyne Rat Tail"
	icon_state = "hair_rattail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/shaggy
	name = "Sabelkyne Shaggy"
	icon_state = "hair_shaggy"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/spiky
	name = "Sabelkyne Spiky"
	icon_state = "hair_spiky"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/straight
	name = "Sabelkyne Straight"
	icon_state = "hair_straight"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/taj/victory
	name = "Sabelkyne Victory"
	icon_state = "hair_victory"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/taj/hc
	name = "Sabelkyne ears, colorable"
	desc = ""
	icon_state = "taj"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

////////////////////////////
// Veteris'Unathi Horns/Ears
////////////////////////////

/datum/sprite_accessory/ears/humanathi
	name = "Unathi, short horns colorable"
	desc = ""
	icon_state = "demon-horns1_c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_OLDUNATHI,SPECIES_TAJ)

/datum/sprite_accessory/ears/humanathi/oni_h1_c
	name = "Unathi, small horns colorable"
	desc = ""
	icon_state = "oni-h1_c"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/humanathi/demon_horns2
	name = "Unathi, short horns colorable(outward)"
	desc = ""
	icon_state = "demon-horns2"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/ears/humanthi/dragon_horns
	name = "Unathi, long horns colorable"
	desc = ""
	icon_state = "dragon-horns"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/m_ipc_antenna_synth_horns_ADJ
	name = "Unathi, quad horns plain"
	desc = ""
	icon_state = "m_ipc_antenna_synth_horns_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "m_ipc_antenna_synth_hornslight_ADJ"

/datum/sprite_accessory/ears/m_ipc_antenna_synth_thick_ADJ
	name = "Unathi, long horns thick"
	desc = ""
	icon_state = "m_ipc_antenna_synth_thick_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "m_ipc_antenna_synth_thicklight_ADJ"

/datum/sprite_accessory/ears/m_ipc_antenna_synth_curled_ADJ
	name = "Unathi, thin horns curly"
	desc = ""
	icon_state = "m_ipc_antenna_synth_curled_ADJ"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
/datum/sprite_accessory/ears/drake
	name = "Unathi, frills"
	desc = ""
	icon_state = "drake"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_OLDUNATHI)

////////////////////////////
// Vulp Ears
////////////////////////////

/datum/sprite_accessory/ears/vulp
	name = "Vulpkanin, dual-color"
	desc = ""
	icon_state = "vulp"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulp-inner"
	species_allowed = list(SPECIES_VULP,SPECIES_KHAZAN,SPECIES_CUSTOM)

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

////////////////////////////
// Khazan Ears
////////////////////////////



////////////////////////////
// Duroj Ears
////////////////////////////

/datum/sprite_accessory/ears/duroj/
	name = "Duroj, small bear"
	desc = ""
	icon_state = "smallbear"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_DUROJ,SPECIES_CUSTOM)

/datum/sprite_accessory/ears/duroj/bearhc
	name = "Duroj, bear colorable"
	desc = ""
	icon_state = "bear"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	
////////////////////////////
// Sergal Ears
////////////////////////////

/datum/sprite_accessory/ears/sergal
	name = "Sergal, ears colorable"
	icon_state = "serg_plain_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	species_allowed = list(SPECIES_SERGAL)

/datum/sprite_accessory/ears/sergal/sleek
	name = "Sergal, sleek ears"
	desc = ""
	icon_state = "sleek"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

////////////////////////////
// Snowflake Shit with no sprites/low quality	
////////////////////////////
/*
/datum/sprite_accessory/ears/wolfhc
	name = "wolf, colorable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

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


/datum/sprite_accessory/wing/none //Temp fix.
	name = "NONE"
	desc = ""
	icon_state = null

/datum/sprite_accessory/wing/featheredlarge //Made by Natje!
	name = "large feathered wings (colorable)"
	desc = ""
	icon_state = "feathered2"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/spider_legs //Not really /WINGS/ but they protrude from the back, kinda. Might as well have them here.
	name = "spider legs"
	desc = ""
	icon_state = "spider-legs"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/moth
	name = "moth wings"
	desc = ""
	icon_state = "moth"

/datum/sprite_accessory/wing/mothc
	name = "moth wings, colorable"
	desc = ""
	icon_state = "moth"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/dragonfly
	name = "dragonfly"
	desc = ""
	icon_state = "dragonfly"
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/feathered
	name = "feathered wings, colorable"
	desc = ""
	icon_state = "feathered"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/feathered_medium
	name = "medium feathered wings, colorable" // Keekenox made these feathery things with a little bit more shape to them than the other wings. They are medium sized wing boys.
	desc = ""
	icon_state = "feathered3"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/bat_black
	name = "bat wings, black"
	desc = ""
	icon_state = "bat-black"

/datum/sprite_accessory/wing/bat_color
	name = "bat wings, colorable"
	desc = ""
	icon_state = "bat-color"
	do_colouration = 1

/datum/sprite_accessory/wing/bat_red
	name = "bat wings, red"
	desc = ""
	icon_state = "bat-red"

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

/datum/sprite_accessory/wing/feathered
	name = "feathered wings, colorable"
	desc = ""
	icon_state = "feathered"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/beewings
	name = "bee wings"
	desc = ""
	icon_state = "beewings"

/datum/sprite_accessory/wing/liquidfirefly_gazer //I g-guess this could be considered wings?
	name = "gazer eyestalks"
	desc = ""
	icon_state = "liquidfirefly-eyestalks"

/datum/sprite_accessory/wing/moth_full
	name = "moth antenna and wings"
	desc = ""
	icon_state = "moth_full"

/datum/sprite_accessory/wing/moth_full_gray
	name = "moth antenna and wings, colorable"
	desc = ""
	icon_state = "moth_full_gray"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/snag
	name = "xenomorph backplate"
	desc = ""
	icon_state = "snag-backplate"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/nevrean
	name = "nevrean wings/fantail"
	desc = ""
	icon_state = "nevrean_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/wing/drago_wing
	name = "Cybernetic Dragon wings"
	desc = ""
	icon_state = "drago_wing"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "drago_wing_2"
