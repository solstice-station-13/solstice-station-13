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

/datum/sprite_accessory/tail/squirrel
	name = "Genemod, squirrel colorable"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/bunny
	name = "Genemod, bunny colorable"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1

/datum/sprite_accessory/tail/mouse
	name = "Genemod, mouse colorable"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/horse
	name = "Genemod, horse tail colorable"
	desc = ""
	icon_state = "horse"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/cow
	name = "Genemod, cow tail colorable"
	desc = ""
	icon_state = "cow"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fantail
	name = "Genemod, avian fantail colorable"
	desc = ""
	icon_state = "fantail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wagtail
	name = "Genemod, avian wagtail colorable"
	desc = ""
	icon_state = "wagtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/doublekitsune
	name = "Genemod, double kitsune tail colorable"
	desc = ""
	icon_state = "doublekitsune"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tripplekitsune_colorable_yw
	name = "Genemod, triple kitsune colorable"
	desc = ""
	icon_state = "triplekitsune"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "triplekitsune_tips"
  
/datum/sprite_accessory/tail/ninekitsune_colorable_yw
	name = "Genemod, kitsune nine tail colorable"
	desc = ""
	icon_state = "ninekitsune"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "ninekitsune-tips"
  
/datum/sprite_accessory/tail/ringtail
	name = "Genemod, ringtail colorable"
	desc = ""
	icon_state = "ringtail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "ringtail_mark"

/datum/sprite_accessory/tail/satyr
	name = "Genemod, goat legs colorable"
	desc = ""
	icon_state = "satyr"
	color_blend_mode = ICON_MULTIPLY
	do_colouration = 1
  
/datum/sprite_accessory/tail/snaketail
	name = "Genemod, snake tail colorable"
	desc = ""
	icon_state = "snaketail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/skunktail
	name = "Genemod, skunk dual-color"
	desc = ""
	icon_state = "skunktail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "skunktail_mark"

/datum/sprite_accessory/tail/deertail
	name = "Genemod, deer dual-color"
	desc = ""
	icon_state = "deertail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "deertail_mark"
  
////////////////////////////
// Bug Stuff
////////////////////////////

/datum/sprite_accessory/tail/beethorax
	name = "Genemod, bee thorax"
	desc = ""
	icon_state = "beethorax"

/datum/sprite_accessory/tail/buggo
	name = "Genemod, bug abdomen, colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobee
	name = "Genemod, bug abdomen, bee top, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"

/datum/sprite_accessory/tail/buggobeefull
	name = "Genemod, bug abdomen, bee full, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"

/datum/sprite_accessory/tail/buggounder
	name = "Genemod, bug abdomen, underside, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"

/datum/sprite_accessory/tail/buggofirefly
	name = "Genemod, bug abdomen, firefly, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"

/datum/sprite_accessory/tail/buggofat
	name = "Genemod, fat bug abdomen, colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggofatbee
	name = "Genemod, fat bug abdomen, bee top, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggofatbeefull
	name = "Genemod, fat bug abdomen, bee full, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggofatunder
	name = "Genemod, fat bug abdomen, underside, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofatfirefly
	name = "Genemod, fat bug abdomen, firefly, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_markings"

/datum/sprite_accessory/tail/buggowag
	name = "Genemod, bug abdomen, colorable, vwag change"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobeewag
	name = "Genemod, bug abdomen, bee top, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"
	extra_overlay_w = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggobeefullwag
	name = "Genemod, bug abdomen, bee full, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"
	extra_overlay_w = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggounderwag
	name = "Genemod, bug abdomen, underside, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"
	extra_overlay_w = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofireflywag
	name = "Genemod, bug abdomen, firefly, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"
	extra_overlay_w = "buggofatfirefly_markings"

////////////////////////////
// Taj Tails
////////////////////////////

/datum/sprite_accessory/tail/special/tajaran
	name = "Sablekyne, normal tail"
	desc = ""
	icon_state = "tajtail_loop1"
	ani_state = "tajtail_loop1"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tiger_white
	name = "Sablekyne, tiger colorable"
	desc = ""
	icon_state = "tiger"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "tigerinnerwhite"

/datum/sprite_accessory/tail/stripey
	name = "Sablekyne, stripey colorable"
	desc = ""
	icon_state = "stripeytail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "stripeytail_mark"
  
/datum/sprite_accessory/tail/sneptail
	name = "Sablekyne, Fluffy Tail (vwag)"
	desc = ""
	icon_state = "sneptail"
	ani_state = "sneptail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "sneptail_mark"
	extra_overlay_w = "sneptail_mark_w"

/datum/sprite_accessory/tail/tiger_new
	name = "Sablekyne, tiger tail (vwag)"
	desc = ""
	icon_state = "tigertail"
	ani_state = "tigertail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "tigertail_mark"
	extra_overlay_w = "tigertail_mark_w"

////////////////////////////
// Unathi Tails
////////////////////////////

/datum/sprite_accessory/tail/chameleon
	name = "Unathi, chameleon colorable"
	desc = ""
	icon_state = "chameleon"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
 /datum/sprite_accessory/tail/dragon
	name = "Unathi, long colorable"
	desc = ""
	icon_state = "dragon"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tail_smooth
	name = "Unathi, extra long colorable"
	desc = ""
	icon_state = "tail_smooth"
	ani_state = "tail_smooth_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_dark_tiger
	name = "Unathi, extra long dark stripe"
	desc = ""
	icon_state = "lizard_tail_dark_tiger"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_light_tiger
	name = "Unathi, extra long light stripe"
	desc = ""
	icon_state = "lizard_tail_light_tiger"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_spiked
	name = "Unathi, extra long spiked"
	desc = ""
	icon_state = "lizard_tail_spiked"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/Easterntail
	name = "Unathi, eastern (animated)"
	desc = ""
	icon_state = "Easterntail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "EasterntailColorTip"
	ani_state = "Easterntail_w"
	extra_overlay_w = "EasterntailColorTip_w"

////////////////////////////
// Vulp Tails
////////////////////////////

/datum/sprite_accessory/tail/vulp_new
	name = "Vulpkanin, normal tail (vwag)"
	desc = ""
	icon_state = "vulptail"
	ani_state = "vulptail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulptail_mark"
	extra_overlay_w = "vulptail_mark_w"

/datum/sprite_accessory/tail/wolf
	name = "Vulpkanin, lupine colorable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

/datum/sprite_accessory/tail/crossfox
	name = "Vulpkanin, cross fox"
	desc = ""
	icon_state = "crossfox"
  
/datum/sprite_accessory/tail/curltail
	name = "Vulpkanin, curltail (vwag)"
	desc = ""
	icon_state = "curltail"
	ani_state = "curltail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "curltail_mark"
	extra_overlay_w = "curltail_mark_w"

/datum/sprite_accessory/tail/shorttail
	name = "Vulpkanin, shorttail (vwag)"
	desc = ""
	icon_state = "straighttail"
	ani_state = "straighttail_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/otietail
	name = "Vulpkanin, small tail (vwag)"
	desc = ""
	icon_state = "otie"
	ani_state = "otie_w"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/ztail
	name = "jagged flufftail"
	desc = ""
	icon_state = "ztail"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/vulpan_alt
	name = "Vulpkanin, alt style colorable"
	desc = ""
	icon_state = "vulptail_alt"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/fox_tail_s
	name = "Vulpkanin, fox tail"
	desc = ""
	icon_state = "fox_tail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fennec_tail_s
	name = "Vulpkanin, fennec tail"
	desc = ""
	icon_state = "fennec_tail_s"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
  
/datum/sprite_accessory/tail/vulpkanin_alt_color
	name = "Vulpkanin, alternate"
	desc = ""
	icon_state = "vulpkanin_alt_color"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulpkanin_alt_color_tips"
	ani_state = "vulpkanin_alt_color_w"
	extra_overlay_w = "vulpkanin_alt_color_tips_w"

////////////////////////////
// Khazan Tails
////////////////////////////



////////////////////////////
// Duroj Tails
////////////////////////////

/datum/sprite_accessory/tail/bear
	name = "Duroj, bear colorable"
	desc = ""
	icon_state = "bear"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY

////////////////////////////
// Sergal Tails
////////////////////////////

/datum/sprite_accessory/tail/sergaltaildc
	name = "Sergal, dual-color"
	desc = ""
	icon_state = "sergal"
	do_colouration = 1
	color_blend_mode = ICON_MULTIPLY
	extra_overlay = "sergal_mark"

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
