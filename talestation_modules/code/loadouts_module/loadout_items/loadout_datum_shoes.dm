// --- Loadout item datums for shoes items ---

/// Shoe Slot Items (Deletes overrided items)
GLOBAL_LIST_INIT(loadout_shoes, generate_loadout_items(/datum/loadout_item/shoes))

/datum/loadout_item/shoes
	category = LOADOUT_ITEM_SHOES
	/// Snowflake, whether these shoes work on digi legs. Don't set this directly
	var/supports_digitigrade = FALSE

/datum/loadout_item/shoes/New()
	. = ..()
	var/ignores_digi = !!(initial(item_path.item_flags) & IGNORE_DIGITIGRADE)
	var/supports_digi = !!(initial(item_path.supports_variations_flags) & (CLOTHING_DIGITIGRADE_VARIATION|CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON))
	supports_digitigrade = ignores_digi || supports_digi
	if(supports_digitigrade)
		add_tooltip("SUPPORTS DIGITIGRADE - This item can be worn on mobs who have digitigrade legs.")

// This is snowflake but digitigrade is in general
// Need to handle shoes that don't fit digitigrade being selected
// Ideally would be generalized with species can equip or something but OH WELL
/datum/loadout_item/shoes/on_equip_item(datum/preferences/preference_source, mob/living/carbon/human/equipper, visuals_only, list/preference_list)
	// Supports digi = needs no special handling so we can contiue as normal
	if(supports_digitigrade)
		return ..()

	// Does not support digi and our equipper is? We shouldn't mess with it, skip
	if(equipper.bodytype & BODYTYPE_DIGITIGRADE)
		return

	// Does not support digi and our equipper is not digi? Continue as normal
	return ..()
/datum/loadout_item/shoes/greyscale_sneakers
	name = "Greyscale Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers
	can_be_greyscale = TRUE
	additional_tooltip_contents = list(TOOLTIP_GREYSCALE)

/datum/loadout_item/shoes/black_cowboy_boots
	name = "Black Cowboy Boots"
	item_path = /obj/item/clothing/shoes/cowboy/black

/datum/loadout_item/shoes/brown_cowboy_boots
	name = "Brown Cowboy Boots"
	item_path = /obj/item/clothing/shoes/cowboy

/datum/loadout_item/shoes/white_cowboy_boots
	name = "White Cowboy Boots"
	item_path = /obj/item/clothing/shoes/cowboy/white

/datum/loadout_item/shoes/griffin_boots
	name = "Griffin Boots"
	item_path = /obj/item/clothing/shoes/griffin

/datum/loadout_item/shoes/jackboots
	name = "Jackboots"
	item_path = /obj/item/clothing/shoes/jackboots/loadout

/datum/loadout_item/shoes/laceup
	name = "Laceup Shoes"
	item_path = /obj/item/clothing/shoes/laceup

/datum/loadout_item/shoes/mining_boots
	name = "Mining Boots"
	item_path = /obj/item/clothing/shoes/workboots/mining

/datum/loadout_item/shoes/singerb_shoes
	name = "Blue Preforming Boots"
	item_path = /obj/item/clothing/shoes/singerb

/datum/loadout_item/shoes/singery_shoes
	name = "Yellow Preforming Boots"
	item_path = /obj/item/clothing/shoes/singery

/datum/loadout_item/shoes/russian_boots
	name = "Russian Boots"
	item_path = /obj/item/clothing/shoes/russian

/datum/loadout_item/shoes/sandals
	name = "Sandals"
	item_path = /obj/item/clothing/shoes/sandal

/datum/loadout_item/shoes/black_sneakers
	name = "Black Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/black

/datum/loadout_item/shoes/blue_sneakers
	name = "Blue Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/blue

/datum/loadout_item/shoes/brown_sneakers
	name = "Brown Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/brown

/datum/loadout_item/shoes/green_sneakers
	name = "Green Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/green

/datum/loadout_item/shoes/purple_sneakers
	name = "Purple Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/purple

/datum/loadout_item/shoes/orange_sneakers
	name = "Orange Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/orange

/datum/loadout_item/shoes/yellow_sneakers
	name = "Yellow Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/yellow

/datum/loadout_item/shoes/white_sneakers
	name = "White Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/white

/datum/loadout_item/shoes/rainbow_sneakers
	name = "Rainbow Sneakers"
	item_path = /obj/item/clothing/shoes/sneakers/rainbow

/datum/loadout_item/shoes/winter_boots
	name = "Winter Boots"
	item_path = /obj/item/clothing/shoes/winterboots

/datum/loadout_item/shoes/work_boots
	name = "Work Boots"
	item_path = /obj/item/clothing/shoes/workboots
