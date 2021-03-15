/datum/species/tajaran
	name = SPECIES_TAJ
	name_plural = "Sabelkyne"
	icobase = 'modular_solstice/icons/mob/human_races/species/tajaran/body.dmi'
	deform = 'modular_solstice/icons/mob/human_races/species/tajaran/deformed_body.dmi'
	husk_icon = 'modular_solstice/icons/mob/human_races/species/tajaran/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/tajaran/preview.dmi'
	modular_tail = 'modular_solstice/icons/mob/human_races/species/tajaran/tail.dmi'
	tail = "tajtail"
	default_ears = /datum/sprite_accessory/ears/tajhc //Variable seems to not work anyway.
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "The Sabelkyne are a mammalian species from the planet Almutahar, closely resembling felines. They are a divided species, with \
	two major subspecies; the Sabelkyne and the Maunkyne. This description is a temporary placeholder."

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN

	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Tajara do
		TAG_CULTURE = list(CULTURE_TAJ)
	)

/datum/species/tajaran/proc/handle_coco(var/mob/living/carbon/human/M, var/datum/reagent/nutriment/coco, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[coco.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))
