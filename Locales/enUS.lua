-- Dejunk: enUS (English) localization file.

local AddonName, AddonTable = ...
local L = LibStub('AceLocale-3.0'):NewLocale(AddonName, 'enUS', true)

L["ADDED_ITEM_TO_LIST"] = "Added %s to %s."
L["AUTO_DESTROY_TEXT"] = "Auto Destroy"
L["AUTO_DESTROY_TOOLTIP"] = "Destroy junk items periodically while this window is closed."
L["AUTO_REPAIR_TEXT"] = "Auto Repair"
L["AUTO_REPAIR_TOOLTIP"] = "Automatically repair items upon opening a merchant window."
L["AUTO_SELL_TEXT"] = "Auto Sell"
L["AUTO_SELL_TOOLTIP"] = "Automatically sell junk items upon opening a merchant window."
L["BACK_TEXT"] = "Back"
L["BINDINGS_TOGGLE_OPTIONS_TEXT"] = "Toggle Options"
L["BINDINGS_ADD_TO_LIST_TEXT"] = "Add to %s"
L["BINDINGS_REMOVE_FROM_LIST_TEXT"] = "Remove from %s"
L["BY_CATEGORY_TEXT"] = "By Category"
L["BY_QUALITY_TEXT"] = "By Quality"
L["BY_TYPE_TEXT"] = "By Type"
L["CANNOT_DEJUNK_WHILE_DESTROYING"] = "Cannot dejunk while items are being destroyed."
L["CANNOT_DEJUNK_WHILE_LISTS_UPDATING"] = "Cannot dejunk while %s and %s are being updated."
L["CANNOT_DESTROY_WHILE_DEJUNKING"] = "Cannot destroy while items are being dejunked."
L["CANNOT_DESTROY_WHILE_LIST_UPDATING"] = "Cannot destroy while %s is being updated."
L["CHARACTER_SPECIFIC_TEXT"] = "Character Specific Settings"
L["CHARACTER_SPECIFIC_TOOLTIP"] = "Click this to toggle between global settings and settings specific to this character."
L["COLOR_SCHEME_SET_TEXT"] = "Color scheme set to %s."
L["COLOR_SCHEME_TEXT"] = "Scheme"
L["COMMON_TEXT"] = "Common"
L["DEJUNK_BUTTON_TOOLTIP"] = "Right-Click to toggle options."
L["DEJUNKING_IN_PROGRESS"] = "Dejunking is already in progress."
L["DESTROY_ALL_TOOLTIP"] = "Destroy all items of this quality."
L["DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "Pets Already Collected"
L["DESTROY_PETS_ALREADY_COLLECTED_TOOLTIP"] = "Destroy pets of which you have already collected at least one.|n|nOnly applies to soulbound pets which cannot be sold."
L["DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "Toys Already Collected"
L["DESTROY_TOYS_ALREADY_COLLECTED_TOOLTIP"] = "Destroy toys which you have already collected.|n|nOnly applies to soulbound toys which cannot be sold."
L["DESTROY_IGNORE_LIST_TOOLTIP"] = "Ignore all items on the %s list."
L["DESTROY_LIST_TOOLTIP"] = "Destroy all items on the %s list."
L["DESTROY_TEXT"] = "Destroy"
L["DESTROY_OPTIONS_TEXT"] = "DESTROY"
L["DESTROYABLES_TEXT"] = "Destroyables"
L["DESTROYABLES_TOOLTIP"] = "Items on this list will be destroyed unless ignored by options."
L["DESTROYED_ITEM"] = "Destroyed 1 junk item."
L["DESTROYED_ITEM_VERBOSE"] = "Destroyed: %s."
L["DESTROYED_ITEMS"] = "Destroyed %s junk items."
L["DESTROYED_ITEMS_VERBOSE"] = "Destroyed: %sx%s."
L["DESTROYING_IN_PROGRESS"] = "Destroying is already in progress."
L["EPIC_TEXT"] = "Epic"
L["EXCLUSIONS_TEXT"] = "Exclusions"
L["EXCLUSIONS_TOOLTIP"] = "Items on this list will never be sold."
L["EXPORT_HELPER_TEXT"] = "When highlighted, use <Ctrl+C> or <Cmd+C> to copy the export string above."
L["EXPORT_LABEL_TEXT"] = "Export String"
L["EXPORT_TEXT"] = "Export"
L["EXPORT_TITLE_TEXT"] = "Exporting from %s"
L["FAILED_TO_PARSE_ITEM_ID"] = "Item ID %s failed to parse and may not exist."
L["GENERAL_TEXT"] = "General"
L["IGNORE_BATTLEPETS_TEXT"] = "Battle Pets"
L["IGNORE_BATTLEPETS_TOOLTIP"] = "Ignore battle and companion pets."
L["IGNORE_COSMETIC_TEXT"] = "Cosmetic"
L["IGNORE_COSMETIC_TOOLTIP"] = "Ignore cosmetic and generic armor such as tabards, shirts, and held in off-hand items."
L["IGNORE_BOE_TEXT"] = "Binds When Equipped"
L["IGNORE_BOE_TOOLTIP"] = "Ignore binds when equipped items."
L["IGNORE_CONSUMABLES_TEXT"] = "Consumables"
L["IGNORE_CONSUMABLES_TOOLTIP"] = "Ignore consumable items such as food, potions, and Artifact Power."
L["IGNORE_EQUIPMENT_SETS_TEXT"] = "Equipment Sets"
L["IGNORE_EQUIPMENT_SETS_TOOLTIP"] = "Ignore items belonging to equipment sets."
L["IGNORE_GEMS_TEXT"] = "Gems"
L["IGNORE_GEMS_TOOLTIP"] = "Ignore cut gems and artifact relics."
L["IGNORE_GLYPHS_TEXT"] = "Glyphs"
L["IGNORE_GLYPHS_TOOLTIP"] = "Ignore glyphs."
L["IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "Item Enhancements"
L["IGNORE_ITEM_ENHANCEMENTS_TOOLTIP"] = "Ignore items used for enhancing weapons and armor."
L["IGNORE_RECIPES_TEXT"] = "Recipes"
L["IGNORE_RECIPES_TOOLTIP"] = "Ignore tradeskill recipes."
L["IGNORE_SOULBOUND_TEXT"] = "Soulbound"
L["IGNORE_SOULBOUND_TOOLTIP"] = "Ignore soulbound items."
L["IGNORE_TEXT"] = "Ignore"
L["IGNORE_TRADEABLE_TEXT"] = "Tradeable"
L["IGNORE_TRADEABLE_TOOLTIP"] = "Ignore items which can be traded with players that were also eligible to loot them."
L["IGNORE_TRADE_GOODS_TEXT"] = "Trade Goods"
L["IGNORE_TRADE_GOODS_TOOLTIP"] = "Ignore items related to crafting professions."
L["IMPORT_HELPER_TEXT"] = "Enter item IDs separated by a semi-colon (e.g. 4983;58907;67410)."
L["IMPORT_LABEL_TEXT"] = "Import String"
L["IMPORT_TEXT"] = "Import"
L["IMPORT_TITLE_TEXT"] = "Importing into %s"
L["INCLUSIONS_TEXT"] = "Inclusions"
L["INCLUSIONS_TOOLTIP"] = "Items on this list will always be sold."
L["ITEM_ALREADY_ON_LIST"] = "%s is already on %s."
L["ITEM_CANNOT_BE_SOLD"] = "%s cannot be sold."
L["ITEM_CANNOT_BE_DESTROYED"] = "%s cannot be destroyed."
L["ITEM_NOT_ON_LIST"] = "%s is not on %s."
L["ITEM_TOOLTIP_TEXT"] = "Item Tooltip"
L["ITEM_TOOLTIP_TOOLTIP"] = "Display a Dejunk message in an item's tooltip indicating if it will be sold. Hold <Shift> to indicate if it will be destroyed.|n|nHold <Alt> or <Shift+Alt> to display the reason.|n|nThis tooltip only applies when mousing over items in your bags."
L["ITEM_WILL_BE_DESTROYED"] = "This item will be destroyed."
L["ITEM_WILL_BE_SOLD"] = "This item will be sold."
L["ITEM_WILL_NOT_BE_DESTROYED"] = "This item will not be destroyed."
L["ITEM_WILL_NOT_BE_SOLD"] = "This item will not be sold."
L["LIST_FRAME_ADD_TOOLTIP"] = "To add an item, drop it into the frame below. (Items can only be added from your bags and inventory.)"
L["LIST_FRAME_REM_ALL_TOOLTIP"] = "To remove all items, hold <Shift+Alt> and Right-Click this title."
L["LIST_FRAME_REM_TOOLTIP"] = "To remove an item, highlight an entry and Right-Click."
L["MAY_NOT_HAVE_DESTROYED_ITEM"] = "May not have destroyed %s."
L["MAY_NOT_HAVE_SOLD_ITEM"] = "May not have sold %s."
L["MINIMAP_CHECKBUTTON_TEXT"] = "Minimap Icon"
L["MINIMAP_CHECKBUTTON_TOOLTIP"] = "Display a Dejunk icon on the minimap."
L["MINIMAP_ICON_TOOLTIP_1"] = "Left-Click to toggle options."
L["MINIMAP_ICON_TOOLTIP_2"] = "Right-Click to start destroying."
L["MINIMAP_ICON_TOOLTIP_3"] = "Drag to move this icon."
L["NO_CACHED_DESTROYABLE_ITEMS"] = "No destroyable junk items could be retrieved. Try again later."
L["NO_CACHED_JUNK_ITEMS"] = "No junk items could be retrieved. Try again later."
L["NO_DESTROYABLE_ITEMS"] = "No junk items to destroy."
L["NO_JUNK_ITEMS"] = "No junk items to sell."
L["ONLY_DESTROYING_CACHED"] = "Some items could not be retrieved. Only destroying cached junk items."
L["ONLY_SELLING_CACHED"] = "Some items could not be retrieved. Only selling cached junk items."
L["OPTIONS_TEXT"] = "Options"
L["POOR_TEXT"] = "Poor"
L["PRICE_THRESHOLD_TEXT"] = "Price Threshold"
L["PRICE_THRESHOLD_TOOLTIP"] = "Only destroy junk items or stacks of junk items worth less than a set price."
L["RARE_TEXT"] = "Rare"
L["REASON_DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "Pets already collected are being destroyed."
L["REASON_DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "Toys already collected are being destroyed."
L["REASON_DESTROY_BY_QUALITY_TEXT"] = "Items of this quality are being destroyed."
L["REASON_DESTROY_IGNORE_EXCLUSIONS_TEXT"] = "Items on Exclusions are ignored."
L["REASON_DESTROY_INCLUSIONS_TEXT"] = "Items on Inclusions are being destroyed."
L["REASON_DESTROY_THRESHOLD_MET_TEXT"] = "Price threshold of %s met."
L["REASON_DESTROY_THRESHOLD_NOT_MET_TEXT"] = "Price threshold of %s not met."
L["REASON_IGNORE_BATTLEPETS_TEXT"] = "Battle pets are ignored."
L["REASON_IGNORE_COSMETIC_TEXT"] = "Cosmetic items are ignored."
L["REASON_IGNORE_BOE_TEXT"] = "Binds when equipped items are ignored."
L["REASON_IGNORE_CONSUMABLES_TEXT"] = "Consumables are ignored."
L["REASON_IGNORE_EQUIPMENT_ABOVE_ILVL_TEXT"] = "Equipment with item level %s+ is ignored."
L["REASON_IGNORE_EQUIPMENT_SETS_TEXT"] = "Equipment set items are ignored."
L["REASON_IGNORE_GEMS_TEXT"] = "Gems are ignored."
L["REASON_IGNORE_GLYPHS_TEXT"] = "Glyphs are ignored."
L["REASON_IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "Item enhancements are ignored."
L["REASON_IGNORE_RECIPES_TEXT"] = "Recipes are ignored."
L["REASON_IGNORE_SOULBOUND_TEXT"] = "Soulbound items are ignored."
L["REASON_IGNORE_TRADEABLE_TEXT"] = "Tradeable items are ignored."
L["REASON_IGNORE_TRADE_GOODS_TEXT"] = "Trade goods are ignored."
L["REASON_ITEM_NOT_FILTERED_TEXT"] = "This item is not being filtered."
L["REASON_ITEM_ON_LIST_TEXT"] = "This item is on %s."
L["REASON_SELL_BY_QUALITY_TEXT"] = "Items of this quality are being sold."
L["REASON_SELL_EQUIPMENT_BELOW_ILVL_TEXT"] = "Equipment below item level %s is being sold."
L["REASON_SELL_UNSUITABLE_TEXT"] = "Unsuitable equipment is being sold."
L["REMOVED_ALL_FROM_LIST"] = "Removed all items from %s."
L["REMOVED_ITEM_FROM_LIST"] = "Removed %s from %s."
L["REPAIRED_ALL_ITEMS"] = "Repaired all items for %s."
L["REPAIRED_ALL_ITEMS_GUILD"] = "Repaired all items for %s (Guild)."
L["REPAIRED_NO_ITEMS"] = "Not enough money to repair."
L["REPAIRING_TEXT"] = "Repairing"
L["SAFE_MODE_MESSAGE"] = "Safe Mode is enabled: only selling %s items."
L["SAFE_MODE_TEXT"] = "Safe Mode"
L["SAFE_MODE_TOOLTIP"] = "Only sell up to %s items at a time."
L["SCALE_TEXT"] = "Scale"
L["SCHEME_NAME_DEFAULT"] = "Default"
L["SCHEME_NAME_GRAY"] = "Gray"
L["SCHEME_NAME_GREEN"] = "Green"
L["SCHEME_NAME_PURPLE"] = "Purple"
L["SCHEME_NAME_RED"] = "Red"
L["SELL_ALL_TOOLTIP"] = "Sell all items of this quality."
L["SELL_EQUIPMENT_BELOW_ILVL_TEXT"] = "Equipment Below Item Level"
L["SELL_EQUIPMENT_BELOW_ILVL_TOOLTIP"] = "Sell all equippable items below a specified item level.|n|nEquippable items of common quality or higher with an item level greater than or equal to the specified item level will be ignored.|n|nCosmetic items and fishing poles are unaffected by this setting."
L["SELL_TEXT"] = "Sell"
L["SELL_UNSUITABLE_TEXT"] = "Unsuitable Equipment"
L["SELL_UNSUITABLE_TOOLTIP"] = "Sell all weapons which are unsuitable for your class, and sell all armor which does not match your class’ primary armor type."
L["SELLING_TEXT"] = "Selling"
L["SILENT_MODE_TEXT"] = "Silent Mode"
L["SILENT_MODE_TOOLTIP"] = "Disable Dejunk chat window messages."
L["START_DESTROYING_BUTTON_TEXT"] = "Start Destroying"
L["SOLD_ITEM_VERBOSE"] = "Sold: %s."
L["SOLD_ITEMS_VERBOSE"] = "Sold: %sx%s."
L["SOLD_YOUR_JUNK"] = "Sold your junk for %s."
L["UNCOMMON_TEXT"] = "Uncommon"
L["USE_GUILD_REPAIR_TEXT"] = "Use Guild"
L["USE_GUILD_REPAIR_TOOLTIP"] = "Prioritize guild repairs when available."
L["VENDOR_DOESNT_BUY"] = "Cannot sell to that merchant."
L["VERBOSE_MODE_TEXT"] = "Verbose Mode"
L["VERBOSE_MODE_TOOLTIP"] = "Enable additional Dejunk chat window messages when selling and destroying items."
