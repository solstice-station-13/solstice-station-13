/decl/hierarchy/mil_uniform
	var/utility_under_urban = null
	var/utility_under_tan = null
	var/utility_hat_urban = null
	var/utility_hat_tan = null

/decl/hierarchy/mil_uniform/army
	name = "Master Army outfit"
	hierarchy_type = /decl/hierarchy/mil_uniform/army
	branches = list(/datum/mil_branch/army)

	pt_under = /obj/item/clothing/under/solgov/pt/army
	pt_shoes = /obj/item/clothing/shoes/black

	utility_under = /obj/item/clothing/under/solgov/utility/army
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_shoes = /obj/item/clothing/shoes/dutyboots
	utility_hat = /obj/item/clothing/head/solgov/utility/army
	utility_hat_urban = /obj/item/clothing/head/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov
	)

	service_under = /obj/item/clothing/under/solgov/service/army
	service_skirt = /obj/item/clothing/under/solgov/service/army/skirt
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison)

	dress_under = /obj/item/clothing/under/solgov/mildress/army
	dress_skirt = /obj/item/clothing/under/solgov/mildress/army/skirt
	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/solgov/dress/army
	dress_gloves = /obj/item/clothing/gloves/white

	dress_extra = list(/obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/com //Can only be officers
	name = "Army command"
	departments = COM

	utility_under = /obj/item/clothing/under/solgov/utility/army/command
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/cmd
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov)

/decl/hierarchy/mil_uniform/army/com/seniorofficer
	name = "Army senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/eng
	name = "Army engineering"
	departments = ENG

	utility_under = /obj/item/clothing/under/solgov/utility/army/engineering
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/eng
	)

/decl/hierarchy/mil_uniform/army/eng/noncom
	name = "Army engineering NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/eng/officer
	name = "Army engineering CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/eng
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/eng/officer/com //Can only be officers
	name = "Army engineering command"
	departments = ENG|COM

/decl/hierarchy/mil_uniform/army/eng/officer/com/seniorofficer
	name = "Army engineering senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/sec
	name = "Army security"
	departments = SEC

	utility_under = /obj/item/clothing/under/solgov/utility/army/security
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/sec,
		/obj/item/clothing/under/solgov/utility/army/security)

/decl/hierarchy/mil_uniform/army/sec/noncom
	name = "Army security NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison, /obj/item/clothing/head/solgov/service/army/campaign)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/sec/officer
	name = "Army security CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/sec
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/sec/officer/com //Can only be officers
	name = "Army security command"
	departments = SEC|COM

/decl/hierarchy/mil_uniform/army/sec/officer/com/seniorofficer
	name = "Army security senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/med
	name = "Army medical"
	departments = MED

	utility_under = /obj/item/clothing/under/solgov/utility/army/medical
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/med
	)

/decl/hierarchy/mil_uniform/army/med/noncom
	name = "Army medical NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/med/officer
	name = "Army medical CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/med
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/med/officer/com //Can only be officers
	name = "Army medical command"
	departments = MED|COM

/decl/hierarchy/mil_uniform/army/med/officer/com/seniorofficer
	name = "Army medical senior command"
	min_rank = 15

	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	dress_over = /obj/item/clothing/suit/dress/solgov/army/command

/decl/hierarchy/mil_uniform/army/sup
	name = "Army supply"
	departments = SUP

	utility_under = /obj/item/clothing/under/solgov/utility/army/supply
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/sup
	)

/decl/hierarchy/mil_uniform/army/sup/noncom
	name = "Army supply NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/sup/officer
	name = "Army supply CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/sup
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/sup/seniorofficer
	name = "Army supply senior command"
	min_rank = 15

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov
	)

	utility_under = /obj/item/clothing/under/solgov/utility/army/command

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/srv
	name = "Army service"
	departments = SRV

	utility_under = /obj/item/clothing/under/solgov/utility/army/service
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/svc
	)

/decl/hierarchy/mil_uniform/army/srv/noncom
	name = "Army service NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/srv/officer
	name = "Army service CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/svc
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/exp
	name = "Army exploration"
	departments = EXP

	utility_under = /obj/item/clothing/under/solgov/utility/army/exploration
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban
	utility_extra = list(
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/exp
	)

/decl/hierarchy/mil_uniform/army/exp/noncom
	name = "Army exploration NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/exp/officer
	name = "Army exploration CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/exp
	)

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/spt
	name = "Army command support"
	departments = SPT

	utility_under = /obj/item/clothing/under/solgov/utility/army/command
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban

/decl/hierarchy/mil_uniform/army/spt/noncom
	name = "Army support NCO"
	min_rank = 4

	service_hat = /obj/item/clothing/head/solgov/service/army
	service_over = /obj/item/clothing/suit/storage/solgov/service/army
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison, /obj/item/clothing/head/solgov/service/army/campaign)

	dress_over = /obj/item/clothing/suit/dress/solgov/army
	dress_extra = list(/obj/item/weapon/material/sword/replica/officersword/army)

/decl/hierarchy/mil_uniform/army/spt/officer
	name = "Army command support CO"
	min_rank = 11

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/cmd
	)

	utility_under = /obj/item/clothing/under/solgov/utility/army/command
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command
	service_extra = list(/obj/item/clothing/head/solgov/service/army/garrison/command)

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)

/decl/hierarchy/mil_uniform/army/spt/seniorofficer
	name = "Army senior command support"
	min_rank = 15

	utility_extra = list(
		/obj/item/clothing/under/solgov/utility/army/command,
		/obj/item/clothing/head/beret/solgov,
		/obj/item/clothing/head/ushanka/solgov/army,
		/obj/item/clothing/head/ushanka/solgov/army/green,
		/obj/item/clothing/suit/storage/hooded/wintercoat/solgov/army,
		/obj/item/clothing/head/soft/solgov,
		/obj/item/clothing/gloves/thick/duty/solgov/cmd
	)

	utility_under = /obj/item/clothing/under/solgov/utility/army/command
	utility_under_urban = /obj/item/clothing/under/solgov/utility/army/urban

	service_hat = /obj/item/clothing/head/solgov/service/army/command
	service_over = /obj/item/clothing/suit/storage/solgov/service/army/command

	dress_over = /obj/item/clothing/suit/dress/solgov/army/command
	dress_hat = /obj/item/clothing/head/solgov/dress/army/command
	dress_extra = list(/obj/item/clothing/head/beret/solgov, /obj/item/weapon/material/sword/replica/officersword/armyofficer)
