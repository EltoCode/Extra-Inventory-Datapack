##Inits a player for the datapack
#
#Called by tick

#gives the player unique exinv_id
#execute as @s store result score @s exinv_id run scoreboard players get #exinv_gid exinv_id
#Adds to the global id
#scoreboard players add #exinv_gid exinv_id 1

#constructs an object with UUID and a blank Inv
execute as @s at @s run data modify storage exinv:construct Player.UUID set from entity @s UUID
execute as @s at @s run data modify storage exinv:construct Player.Inventory set value []

#Writes the constructed object to exinv:invStore.Players
data modify storage exinv:inv_list invStore.Players append from storage exinv:construct Player

#Clears the constructor
data remove storage exinv:construct Player


#Enables triggers
scoreboard players enable @s exinv_crafting_recipe
scoreboard players enable @s exinv_help
scoreboard players enable @s exinv_credits

#Sends a Thank You message.
tellraw @s ["",{"text":"["},{"text":"Extra Inventory","color":"gold"},{"text":"]\n"},{"text":"Thank you for choosing the Extra Inventory Data Pack!","color":"yellow"},{"text":" \n"},{"text":"Made by ","color":"yellow"},{"text":"Elton's Stuff Productions","color":"gold"},{"text":"\n"},{"text":"[Youtube]","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCGoqSOyv8UVVpP0mIJHQj9g"}},{"text":"\n"},{"text":"[Twitter]","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/EltonsStuff"}}]

#debug_log
execute as @s if score #exinv_debug exinv_misc matches 1 run say has been intialised