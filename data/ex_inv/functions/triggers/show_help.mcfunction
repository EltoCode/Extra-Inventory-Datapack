##Trigger to show help
#
##Called by triggers

tellraw @s ["",{"text":"["},{"text":"Extra Inventory","color":"gold"},{"text":"] \n"},{"text":"How to use:","color":"yellow"},{"text":"\n"},{"text":"To use the extra inventory datapack. Craft the ","color":"white"},{"text":"Inventory Crystals","bold":true,"color":"white","clickEvent":{"action":"suggest_command","value":"/trigger exinv_crafting_recipe"}},{"text":" and place them in your inventory. Then hover the mouse over them and press Q to drop the item. Once dropped, your inventory will be swapped. ","color":"white"},{"text":"\n\n"},{"text":"I don't have any more crystals:","color":"yellow"},{"text":"\n"},{"text":"If you have run out of crystals, you will no longer be able to swap inventories. But don't fret. Your extra inventory is safely stored away and can be accessed as soon as you get more crystals.","color":"white"},{"text":"\n\n"},{"text":"What happens to my extra inventory when I die:","color":"yellow"},{"text":"\nAssuming the game will drop your regular inventory, your extra inventory will also be dropped. That means if KeepInventory is on, or you are in spectator mode. Your extra inventory will not drop.\n\n"},{"text":"How do I craft Inventory Crystals:","color":"yellow"},{"text":"\n"},{"text":"Gather the precious materials that are found by mining in the overworld, and place them in the crafting table in this pattern: ","color":"white"},{"text":"[Click Here]","underlined":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger exinv_crafting_recipe"}},{"text":".","color":"white"}]

scoreboard players set @s exinv_help 0
scoreboard players enable @s exinv_help

