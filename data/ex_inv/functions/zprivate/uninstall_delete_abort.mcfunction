## Aborts data list deletion
#
##Called by Player

#sends a message if 10 seconds passed and data was not deleted.
execute as @a if score @s exinv_del_confirm matches 1 if data storage exinv:inv_list invStore run tellraw @a ["",{"text":"["},{"text":"WARNING","color":"red"},{"text":"] "},{"text":"Extra Inventory Data-List Deletion Aborted.","color":"red"}]

#removes scoreboard
scoreboard objectives remove exinv_del_confirm