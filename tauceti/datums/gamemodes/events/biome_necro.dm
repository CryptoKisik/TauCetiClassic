/obj/effect/cellular_biomass_controller/necro
	grow_speed = 4           //lower this value to speed up growth. 1 will process without cooldown.
	core_grow_chance = 5     //chance to spawn light core
	living_grow_chance = 25   //chance to spawn lair or mob
	mark_grow_chance = 0    //chance to spawn decoration
	walls_type =     /obj/structure/cellular_biomass/wall/necro
	insides_type =   /obj/structure/cellular_biomass/grass/necro
	living_type =     /obj/structure/cellular_biomass/lair/necro
	landmarks_type = /obj/effect/decal/cleanable/cellular/necro
	cores_type =     /obj/structure/cellular_biomass/core/necro
	faction = "necro"

/obj/structure/cellular_biomass/wall/necro
	name = "Living mass"
	desc = "Smells like rotten flesh. Disgusting!"
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'

/obj/structure/cellular_biomass/grass/necro
	name = "Living mass"
	desc = "Smells like rotten flesh. Disgusting!"
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'

/obj/structure/cellular_biomass/lair/necro
	name = "Living mass"
	desc = "Smells like rotten flesh. Disgusting!"
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'

/obj/effect/decal/cleanable/cellular/necro
	name = "Living mass"
	desc = "Smells like rotten flesh. Disgusting!"
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'

/obj/structure/cellular_biomass/core/necro
	name = "Living mass"
	desc = "Smells like rotten flesh. Disgusting!"
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'
	light_color = "#996600"

/obj/effect/decal/cleanable/cellular/necro
	name = "horror"
	desc = "You don't whant to know what is this..."
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'
	icon_state = "xeno_1"
	random_icon_states = list("xeno_1", "xeno_2","xeno_3","xeno_4","xeno_5","xeno_6","xeno_7","xeno_8","xeno_9","xeno_10","xeno_11","xeno_12","xeno_13")

/obj/structure/cellular_biomass/wall/necro/New()
	icon_state = "wall"

/obj/structure/cellular_biomass/grass/necro/New()
	icon_state = "grass"

/obj/structure/cellular_biomass/core/necro/New()
	icon_state = "core"
	set_light(luminosity)

/obj/structure/cellular_biomass/lair/necro/New()
	new /mob/living/simple_animal/hostile/cellular/necro/(src.loc)
	qdel(src) //glitches are self-replicating, no need for lair

/mob/living/simple_animal/hostile/cellular/necro/
	name = "Twisted creature"
	desc = "This thing is fast!"
	icon = 'tauceti/datums/gamemodes/events/necromorphs.dmi'
	faction = "necro"
	health = 60
	maxHealth = 60
	melee_damage_lower = 10
	melee_damage_upper = 20
	move_speed = 0

/mob/living/simple_animal/hostile/cellular/necro/New()
	var/type = pick(1,2,3,4,5)
	icon_state = "enemy[type]"
	icon_living = "enemy[type]"
	icon_dead = "enemy[type]-dead"
	..()


