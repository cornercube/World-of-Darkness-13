/datum/vampireclane/old_clan_tzimisce
	name = "Old Clan Tzimisce"
	desc = " The Old Clan Tzimisce are a small group of Fiends who predate the use of fleshcrafting. They regard Vicissitude as a disease of the soul, and refuse to learn or employ it. In most other respects, though, they resemble the rest of the Clan."
	curse = "Grounded to material domain."
//	alt_sprite = "tzi"
//	no_hair = TRUE
//	no_facial = TRUE	//FUCK WRONG RULEBOOK
	clane_disciplines = list(
		/datum/discipline/auspex = 1,
		/datum/discipline/animalism = 2,
		/datum/discipline/dominate = 3
	)
	violating_appearance = FALSE
	male_clothes = "/obj/item/clothing/under/vampire/sport"
	female_clothes = "/obj/item/clothing/under/vampire/red"
	enlightement = TRUE
	var/obj/item/heirl
	whitelisted = FALSE

/datum/vampireclane/old_clan_tzimisce/post_gain(mob/living/carbon/human/H)
	..()
	var/obj/item/ground_heir/heirloom = new(get_turf(H))
	var/list/slots = list(
		LOCATION_LPOCKET = ITEM_SLOT_LPOCKET,
		LOCATION_RPOCKET = ITEM_SLOT_RPOCKET,
		LOCATION_BACKPACK = ITEM_SLOT_BACKPACK,
		LOCATION_HANDS = ITEM_SLOT_HANDS
	)
	H.equip_in_one_of_slots(heirloom, slots, FALSE)
	heirl = heirloom
//	H.add_quirk(/datum/quirk/ground_heirloom)
	if(H.client.prefs.discipline4type == "Vicissitude")
		var/obj/item/organ/cyberimp/arm/surgery/S = new()
		S.Insert(H)
