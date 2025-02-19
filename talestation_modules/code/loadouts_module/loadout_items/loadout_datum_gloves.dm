// --- Loadout item datums for gloves ---

/// Glove Slot Items (Deletes overrided items)
GLOBAL_LIST_INIT(loadout_gloves, generate_loadout_items(/datum/loadout_item/gloves))

/datum/loadout_item/gloves
	category = LOADOUT_ITEM_GLOVES

/datum/loadout_item/gloves/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(isplasmaman(equipper))
		if(!visuals_only)
			to_chat(equipper, "Your loadout gloves were not equipped directly due to your envirosuit gloves.")
			LAZYADD(outfit.backpack_contents, item_path)
	else
		outfit.gloves = item_path

/datum/loadout_item/gloves/bone
	name = "Heirloom Bone Bracers"
	item_path = /obj/item/clothing/gloves/armorless_bracer
	additional_tooltip_contents = list(TOOLTIP_NO_ARMOR)

/datum/loadout_item/gloves/black
	name = "Black Gloves"
	item_path = /obj/item/clothing/gloves/color/black

/datum/loadout_item/gloves/blue
	name = "Blue Gloves"
	item_path = /obj/item/clothing/gloves/color/blue

/datum/loadout_item/gloves/brown
	name = "Brown Gloves"
	item_path = /obj/item/clothing/gloves/color/brown

/datum/loadout_item/gloves/light_brown
	name = "Light Brown Gloves"
	item_path = /obj/item/clothing/gloves/color/light_brown

/datum/loadout_item/gloves/green
	name = "Green Gloves"
	item_path = /obj/item/clothing/gloves/color/green

/datum/loadout_item/gloves/grey
	name = "Grey Gloves"
	item_path = /obj/item/clothing/gloves/color/grey

/datum/loadout_item/gloves/orange
	name = "Orange Gloves"
	item_path = /obj/item/clothing/gloves/color/orange

/datum/loadout_item/gloves/purple
	name = "Purple Gloves"
	item_path = /obj/item/clothing/gloves/color/purple

/datum/loadout_item/gloves/rainbow
	name = "Rainbow Gloves"
	item_path = /obj/item/clothing/gloves/color/rainbow

/datum/loadout_item/gloves/red
	name = "Red Gloves"
	item_path = /obj/item/clothing/gloves/color/red

/datum/loadout_item/gloves/yellow
	name = "Yellow Gloves"
	item_path = /obj/item/clothing/gloves/color/normal_yellow
	additional_tooltip_contents = list("NON-INSULATING - This item is purely cosmetic and provide no shock insulation.")

/datum/loadout_item/gloves/white
	name = "White Gloves"
	item_path = /obj/item/clothing/gloves/color/white

/datum/loadout_item/gloves/fingerless
	name = "Fingerless Gloves"
	item_path = /obj/item/clothing/gloves/fingerless

/datum/loadout_item/gloves/maid_arm_covers
	name = "Maid Arm Covers"
	item_path = /obj/item/clothing/gloves/maid
