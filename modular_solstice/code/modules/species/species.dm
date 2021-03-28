/datum/species

	// I should make this a map at some point.
	// This is much easier to do in a typed language...
	// This feels like List<Object> and I hate it
	var/list/ear_styles
	var/list/tail_styles
	var/list/wing_styles


/datum/species/proc/get_ear_styles()
	var/list/L = LAZYACCESS(ear_styles, type)
	if(!L)
		L = list()
		LAZYSET(ear_styles, type, L)
		for(var/style in GLOB.ear_styles_list)
			var/datum/sprite_accessory/S = GLOB.ear_styles_list[style]
			if(S.species_allowed && !(get_bodytype() in S.species_allowed))
				continue
			if(S.subspecies_allowed && !(name in S.subspecies_allowed))
				continue
			ADD_SORTED(L, style, /proc/cmp_text_asc)
			L[style] = S
	return L

/datum/species/proc/get_tail_styles()
	var/list/L = LAZYACCESS(tail_styles, type)
	if(!L)
		L = list()
		LAZYSET(tail_styles, type, L)
		for(var/style in GLOB.tail_styles_list)
			var/datum/sprite_accessory/S = GLOB.tail_styles_list[style]
			if(S.species_allowed && !(get_bodytype() in S.species_allowed))
				continue
			if(S.subspecies_allowed && !(name in S.subspecies_allowed))
				continue
			ADD_SORTED(L, style, /proc/cmp_text_asc)
			L[style] = S
	return L

/datum/species/proc/get_wing_styles()
	var/list/L = LAZYACCESS(wing_styles, type)
	if(!L)
		L = list()
		LAZYSET(wing_styles, type, L)
		for(var/style in GLOB.wing_styles_list)
			var/datum/sprite_accessory/S = GLOB.wing_styles_list[style]
			if(S.species_allowed && !(get_bodytype() in S.species_allowed))
				continue
			if(S.subspecies_allowed && !(name in S.subspecies_allowed))
				continue
			ADD_SORTED(L, style, /proc/cmp_text_asc)
			L[style] = S
	return L

/*
/datum/species/proc/get_genital_styles()
	var/list/L = LAZYACCESS(genital_styles, type)
	if(!L)
		L = list()
		LAZYSET(genital_styles, type, L)
		for(var/style in GLOB.genital_styles_list)
			var/datum/sprite_accessory/S = GLOB.genital_styles_list[style]
			if(S.species_allowed && !(get_bodytype() in S.species_allowed))
				continue
			if(S.subspecies_allowed && !(name in S.subspecies_allowed))
				continue
			ADD_SORTED(L, style, /proc/cmp_text_asc)
			L[style] = S
	return L
*/


