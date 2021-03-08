/datum/gear/tactical/
	sort_category = "Tactical Equipment"
	category = /datum/gear/tactical/
	slot = slot_tie

/datum/gear/tactical/armor_deco
	display_name = "armor customization"
	path = /obj/item/clothing/accessory/armor/tag
	flags = GEAR_HAS_SUBTYPE_SELECTION
	
/datum/gear/tactical/solgov
	display_name = "Federation Flag tag"
	path = /obj/item/clothing/accessory/armor/tag/solgov
	allowed_branches = SOLGOV_BRANCHES
	cost = 0 // Uniformed branches would require one.
	
// Separating main's certain armor customization items.
/datum/gear/tactical/blood_patch
	display_name = "blood patch selection"
	description = "A selection of blood type patches. Attaches to plate carrier."
	path = /obj/item/clothing/accessory/armor/tag/
	cost = 0 // Life-saving.

/datum/gear/tactical/blood_patch/New()
	..()
	var/blood_type = list()
	blood_type["A+"] = /obj/item/clothing/accessory/armor/tag/apos
	blood_type["A-"] = /obj/item/clothing/accessory/armor/tag/aneg
	blood_type["B+"] = /obj/item/clothing/accessory/armor/tag/bpos
	blood_type["B-"] = /obj/item/clothing/accessory/armor/tag/bneg
	blood_type["AB+"] = /obj/item/clothing/accessory/armor/tag/abpos
	blood_type["AB-"] = /obj/item/clothing/accessory/armor/tag/abneg
	blood_type["O+"] = /obj/item/clothing/accessory/armor/tag/opos
	blood_type["O-"] = /obj/item/clothing/accessory/armor/tag/oneg
	gear_tweaks += new/datum/gear_tweak/path(blood_type)

/datum/gear/tactical/helm_covers
	display_name = "helmet covers"
	path = /obj/item/clothing/accessory/armor/helmcover
	flags = GEAR_HAS_SUBTYPE_SELECTION

/datum/gear/tactical/kneepads
	display_name = "kneepads"
	path = /obj/item/clothing/accessory/kneepads

/datum/gear/tactical/holster
	display_name = "holster selection"
	path = /obj/item/clothing/accessory/storage/holster
	cost = 3

/datum/gear/tactical/sheath
	display_name = "machete sheath"
	path = /obj/item/clothing/accessory/storage/holster/machete

/datum/gear/tactical/knife_sheath
	display_name = "knife sheath selection"
	description = "A leg strapped knife sheath."
	path = /obj/item/clothing/accessory/storage/holster/knife
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/tactical/tacticool
	display_name = "tacticool turtleneck"
	path = /obj/item/clothing/under/syndicate/tacticool
	slot = slot_w_uniform
