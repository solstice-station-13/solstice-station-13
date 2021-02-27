//BASIC CODE
/obj/item/gunbox
	name = "equipment kit"
	desc = "A secure box containing a sidearm."
	icon = 'icons/obj/storage.dmi'
	icon_state = "ammo" //temp

/obj/item/gunbox/attack_self(mob/living/user)
	var/list/options = list()
	options["Ballistic - Military Pistol"] = list(/obj/item/weapon/gun/projectile/pistol/military,/obj/item/ammo_magazine/pistol/double/rubber,/obj/item/ammo_magazine/pistol/double/rubber)
	options["Energy - Smartgun"] = list(/obj/item/weapon/gun/energy/gun/secure)
	options["Taser - Stun Revolver"] = list(/obj/item/weapon/gun/energy/stunrevolver/secure)
	var/choice = input(user,"What type of equipment?") as null|anything in options
	if(src && choice)
		var/list/things_to_spawn = options[choice]
		for(var/new_type in things_to_spawn)
			var/atom/movable/AM = new new_type(get_turf(src))
			if(istype(AM, /obj/item/weapon/gun/))
				to_chat(user, "You have chosen \the [AM]. This is probably worth more than what your paycheck can be used for.")
		qdel(src)

//OTHER KITS
