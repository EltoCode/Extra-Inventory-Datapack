##Drops extra inventory on death
#
##Called by inv_drop_query

#debug_log
execute if score #exinv_debug exinv_misc matches 1 run say player has died, droping inventory..

#writes the empty death inventory to storage
execute as @s at @s run function ex_inv:write_inv


###Maybe refactor to functionize this better
#finds the player inventory in list
execute as @s at @s run function ex_inv:get_match

#summons a chest_minecart loader
execute as @s at @s run summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["exinv_load"]}

#loads from exinv:req into chest_minecart
execute as @s at @s run data modify entity @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1] Items set from storage exinv:req Player.Inventory

#kills the chest minecart to drop inventory
kill @e[type=minecraft:chest_minecart,tag=exinv_load,sort=nearest,limit=1]

#clears exinv:req
data remove storage exinv:req Player
