GLOBAL_VAR(spawntypes)
GLOBAL_LIST(late_spawntypes)

/proc/spawntypes()
	if(!GLOB.spawntypes)
		GLOB.spawntypes = list()
		for(var/type in typesof(/datum/spawnpoint)-/datum/spawnpoint)
			var/datum/spawnpoint/S = type
			var/display_name = initial(S.display_name)
			if((display_name in GLOB.using_map.allowed_spawns) || initial(S.always_visible))
				GLOB.spawntypes[display_name] = new S
	return GLOB.spawntypes

/proc/get_late_spawntypes()
	if(!GLOB.late_spawntypes)
		GLOB.late_spawntypes = list()
		for(var/type in typesof(/datum/spawnpoint)-/datum/spawnpoint)
			var/datum/spawnpoint/S = type
			var/display_name = initial(S.display_name)
			if((display_name in GLOB.using_map.allowed_spawns) || initial(S.always_visible))
				GLOB.late_spawntypes[display_name] = new S
	return GLOB.late_spawntypes

/proc/get_spawn_point(name, late = FALSE)
	if(late)
		if(GLOB.late_spawntypes[name])
			return GLOB.late_spawntypes[name]

	else if(GLOB.spawntypes[name])
		return GLOB.spawntypes[name]

/proc/move_to_spawnpoint(var/mob/living/carbon/human/H, var/jobTitle, var/joined_late = 0)

	var/datum/job/job = SSjobs.get_by_title(jobTitle)

	if(!joined_late || job.latejoin_at_spawnpoints)
		var/obj/S = job.get_roundstart_spawnpoint()

		if(istype(S, /obj/effect/landmark/start) && istype(S.loc, /turf))
			H.forceMove(S.loc)
		else
			var/datum/spawnpoint/spawnpoint = job.get_spawnpoint(H.client)
			H.forceMove(pick(spawnpoint.turfs))
			spawnpoint.after_join(H)

		// Moving wheelchair if they have one
		if(H.buckled && istype(H.buckled, /obj/structure/bed/chair/wheelchair))
			H.buckled.forceMove(H.loc)
			H.buckled.set_dir(H.dir)

/datum/spawnpoint
	var/msg		  //Message to display on the arrivals computer.
	var/list/turfs   //List of turfs to spawn on.
	var/list/points = list() //List of turfs or atoms that represent where this spawn point "is". We will look for spawning turfs in a radius around it
	var/display_name //Name used in preference setup.
	var/always_visible = FALSE	// Whether this spawn point is always visible in selection, ignoring map-specific settings.
	var/list/restrict_job = null
	var/list/disallow_job = null

/datum/spawnpoint/proc/check_job_spawning(job)
	if(restrict_job && !(job in restrict_job))
		return 0

	if(disallow_job && (job in disallow_job))
		return 0

	return 1

//Called after mob is created, moved to a turf and equipped.
/datum/spawnpoint/proc/after_join(mob/victim)
	return

#ifdef UNIT_TEST
/datum/spawnpoint/Del()
	crash_with("Spawn deleted: [log_info_line(src)]")
	..()

/datum/spawnpoint/Destroy()
	crash_with("Spawn destroyed: [log_info_line(src)]")
	. = ..()
#endif

/datum/spawnpoint/arrivals
	display_name = "Arrivals Shuttle"
	msg = "has arrived on the station"

/datum/spawnpoint/arrivals/New()
	..()
	turfs = GLOB.latejoin

/datum/spawnpoint/gateway
	display_name = "Gateway"
	msg = "has completed translation from offsite gateway"

/datum/spawnpoint/gateway/New()
	..()
	turfs = GLOB.latejoin_gateway

/datum/spawnpoint/cryo
	display_name = "Cryogenic Storage"
	msg = "has completed cryogenic revival"
	disallow_job = list("Robot")

/datum/spawnpoint/cryo/New()
	..()
	turfs = GLOB.latejoin_cryo

/datum/spawnpoint/cryo/after_join(mob/living/carbon/human/victim)
	if(!istype(victim))
		return
	var/area/A = get_area(victim)
	for(var/obj/machinery/cryopod/C in A)
		if(!C.occupant)
			C.set_occupant(victim, 1)
			victim.Sleeping(rand(1,3))
			to_chat(victim,SPAN_NOTICE("You are slowly waking up from the cryostasis aboard [GLOB.using_map.full_name]. It might take a few seconds."))
			return

/datum/spawnpoint/cyborg
	display_name = "Cyborg Storage"
	msg = "has been activated from storage"
	restrict_job = list("Robot")

/datum/spawnpoint/cyborg/New()
	..()
	turfs = GLOB.latejoin_cyborg

/datum/spawnpoint/default
	display_name = DEFAULT_SPAWNPOINT_ID
	msg = "has arrived on the station"
	always_visible = TRUE



/datum/spawnpoint/proc/can_spawn(var/mob/M, var/job, var/report = FALSE)
	if(restrict_job && !(job in restrict_job))
		return FALSE
	if(disallow_job && (job in disallow_job))
		return FALSE
	for (var/turf/T in points)
		if (!check_unsafe_spawn(M, T, report))
			return FALSE
	return TRUE

/datum/spawnpoint/proc/check_unsafe_spawn(var/mob/living/spawner, var/turf/spawn_turf, var/confirm = TRUE)
	//var/radlevel = SSradiation.get_rads_at_turf(spawn_turf)
	var/airstatus = is_turf_atmos_unsafe(spawn_turf)
	//if(airstatus || radlevel > 0)
	if(airstatus)
		/*var/reply = alert(spawner, "Warning. Your selected spawn location seems to have unfavorable conditions. \
		You may die shortly after spawning. \
		Spawn anyway? More information: [airstatus] Radiation: [radlevel] Bq", "Atmosphere warning", "Abort", "Spawn anyway")
		*/
		if (!confirm)
			return FALSE
		var/reply = alert(spawner, "Warning. Your selected spawn location seems to have unfavorable conditions. \
		You may die shortly after spawning. \
		Spawn anyway? Alternatively you can be sent to a different random spawnpoint. More information: [airstatus]", "Atmosphere warning", "Elsewhere", "Spawn anyway")
		if(reply == "Elsewhere")
			return FALSE
		else
			// Let the staff know, in case the person complains about dying due to this later. They've been warned.
			log_and_message_admins("User [spawner] spawned at spawn point with dangerous atmosphere.")
	return TRUE

// Put mob at one of spawn turfs
// return FALSE if player decline to spawn in not living-friendly environmental
/datum/spawnpoint/proc/put_mob(var/mob/M, var/ignore_environment = FALSE, var/announce = TRUE)
	var/list/free_turfs = turfs
	var/turf/spawn_turf = pick(free_turfs)

	if(!ignore_environment && !check_unsafe_spawn(M, spawn_turf))
		return FALSE

	M.forceMove(spawn_turf)

	// Moving wheelchair if they have one
	if(M.buckled && istype(M.buckled, /obj/structure/bed/chair/wheelchair))
		M.buckled.forceMove(M.loc)
		M.buckled.set_dir(M.dir)
	return TRUE
