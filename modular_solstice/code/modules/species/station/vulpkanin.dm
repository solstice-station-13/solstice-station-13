/datum/species/vulpkanin
	name = SPECIES_VULP
	name_plural = SPECIES_VULP
	icobase = 'modular_solstice/icons/mob/human_races/species/vulpkanin/body.dmi'
	//deform = 'modular_solstice/icons/mob/human_races/species/vulpkanin/deformed_body.dmi' They don't have deformed icons. Hopefully this doesn't cause problems
	husk_icon = 'modular_solstice/icons/mob/human_races/species/vulpkanin/husk.dmi'
	preview_icon = 'modular_solstice/icons/mob/human_races/species/vulpkanin/preview.dmi'
	modular_tail = 'modular_solstice/icons/mob/human_races/species/vulpkanin/tail.dmi'
	tail = "vulptail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	default_ears = /datum/sprite_accessory/ears/vulp
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "Vulpkanin are another of the animal-like races the Federation has discovered over the years. They were first discovered by NanoTrasen explorers centuries \
	ago. Since discovery, they've been occupied by the Terran Federation. Through economic booms, the Vulpkanin are generally accepted throughout the Federation. Many are \
	cunning entreprenaurs, and a large portion of the Terran business elite are Vulpkanin. Their canid appearance has helped them to be widely accepted and welcomed. The \
	common joke is that they are man's bipedal best friend."

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_ICONBASE
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN //this is possibly my favorite variable just because of how out of place it is. - cebu | what the hell does it even do -tori | Basically it just defines where you can hit them for massive (pain) damage. An entire variable dedicated to nutshots. -cebu

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_VULP_COMMON,
			CULTURE_VULP_HUMANIFIEDELITE,
			CULTURE_VULP_HUMANIFIEDCOMMON,
			CULTURE_VULP_RURAL,
			CULTURE_VULP_TRIBAL,
			CULTURE_VULP_SECUNDUS,
			CULTURE_VULP
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MERSICENTU,
			HOME_SYSTEM_MERSISECUNDUS,
			HOME_SYSTEM_LUNA,
			HOME_SYSTEM_MARS,
			HOME_SYSTEM_VENUS,
			HOME_SYSTEM_CERES,
			HOME_SYSTEM_PLUTO,
			HOME_SYSTEM_TAU_CETI,
			HOME_SYSTEM_TERSTEN,
			HOME_SYSTEM_OTHER			
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_FLEET,
			FACTION_EXPEDITIONARY,
			FACTION_FREETRADE,
			FACTION_CORPORATE,
			FACTION_NANOTRASEN,
			FACTION_HEPHAESTUS,
			FACTION_XYNERGY,
			FACTION_DAIS,
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_ATHEISM,
			RELIGION_DEISM,
			RELIGION_AGNOSTICISM,
			RELIGION_SPIRITUALISM,
			RELIGION_OTHER,
		)
	)

/datum/species/vulpkanin/proc/handle_coco(var/mob/living/carbon/human/M, var/datum/reagent/nutriment/coco, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[coco.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))
